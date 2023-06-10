import 'package:apna_mart/Utils/API.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:connectivity/connectivity.dart';
import 'package:get_storage/get_storage.dart';

import '../../Utils/Routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    inilization();
    goTO();
  }

  inilization() async {
    storage = GetStorage();
    api = API();
  }

  void goTO() async {
    //print("splash");
    var screen = "";
    bool internet = await checkInternetConnectivity();

    if (internet) {
      var user = storage.read("user");
      if (user == null || user == "") {
        screen = "/borading";
      } else {
        var profile = storage.read("Profile");
        var worker = storage.read("worker");

        if ((profile != null && profile) || (worker != null && worker)) {
          profileData = await api.get(api.register + user);
          profileData = profileData["user"][0];
          screen = worker != null && worker ? "/home2" : "/home";
        } else {
          screen = "/profileInfo";
        }
      }
    } else {
      Get.snackbar("No Internet", "Please check your internet connection",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      screen = "/internet";
    }

    Get.offAndToNamed(screen);
  }

  Future<bool> checkInternetConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: Get.height * 0.92,
            width: Get.width,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          ),
          Column(children: [
            Text("Powered by",
                style: Theme.of(context).textTheme.headlineMedium),
            Text("FA Developers",
                style: Theme.of(context).textTheme.headlineLarge),
          ])
        ]),
      ),
    );
  }
}
