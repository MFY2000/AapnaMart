import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:apna_mart/Utils/Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Internet extends StatefulWidget {
  const Internet({super.key});

  @override
  State<Internet> createState() => _InternetState();
}

class _InternetState extends State<Internet> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.height * 0.02),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.018,
                    ),
                    Center(
                      child: Text(
                        "Apna Mart",
                        style: TextStyle(
                          fontSize: 24,
                          color: CustomTheme().fontsColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: mainBodyPadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Oops! It seems your device is not connected to Internet!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: CustomTheme().fontsColor,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: Get.height * 0.1),
                          child: Image.asset(
                            "assets/images/no_internet_connection.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: mainBodyPadding,
                child: Padding(
                  padding: EdgeInsets.only(bottom: Get.height * 0.06),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 40,
                        ),
                        title: Text(
                          "Please check your internet connection to ensure the app functions properly.",
                          style: TextStyle(
                            color: CustomTheme().fontsColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: Get.height * 0.01),
                        child: PrimaryBtn(
                          title: "Try Again",
                          ontapFunc: () =>
                              Get.offAndToNamed(RoutesClass.splash),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
