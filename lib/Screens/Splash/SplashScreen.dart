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
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: Get.height * 0.9,
            width: Get.width,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            height: Get.height * 0.1,
            width: Get.width,
            child: Column(children: [
              Text("Powered by",
                  style: Theme.of(context).textTheme.displaySmall),
              Text("FA Developers",
                  style: Theme.of(context).textTheme.displayMedium),
            ]),
          )
        ]),
      ),
    );
  }
}
