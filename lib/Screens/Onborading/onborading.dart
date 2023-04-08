import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class onboradingScreen extends StatefulWidget {
  const onboradingScreen({super.key});

  @override
  State<onboradingScreen> createState() => _onboradingScreenState();
}

class _onboradingScreenState extends State<onboradingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(children: [
      Container(
        alignment: Alignment.center,
        height: Get.height * 0.25,
        width: Get.width,
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: Get.height * 0.25,
        width: Get.width,
        child: Column(children: [
          Text("Welcome to", style: Theme.of(context).textTheme.displaySmall),
          Text("Apna Mart", style: Theme.of(context).textTheme.displayMedium),
        ]),
      ),
      Container(
        alignment: Alignment.center,
        height: Get.height * 0.25,
        width: Get.width,
        child: Column(children: [
          Text("Welcome to", style: Theme.of(context).textTheme.displaySmall),
          Text("Apna Mart", style: Theme.of(context).textTheme.displayMedium),
        ]),
      ),
    ])));
  }
}
