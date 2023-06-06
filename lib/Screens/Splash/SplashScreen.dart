import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    goTO();
  }

  void goTO() async {
    // Api call to get Data, if data is null then go to onborading
    await Future.delayed(Duration(seconds: 5));
    GetStorage()

    Get.offAndToNamed("/borading");
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
