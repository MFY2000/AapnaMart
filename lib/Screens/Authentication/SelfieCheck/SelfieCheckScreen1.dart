import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

import '../../../Components/Headers/Header.dart';
import '../../../Components/Headers/HeaderWithBackIcon.dart';
import '../../../Utils/Routes.dart';

class SelfieCheckScreen1 extends StatefulWidget {
  const SelfieCheckScreen1({Key? key}) : super(key: key);

  @override
  State<SelfieCheckScreen1> createState() => _SelfieCheckScreen1State();
}

class _SelfieCheckScreen1State extends State<SelfieCheckScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: headerPadding,
                child: HeaderWithBackIcon(
                  title: "Selfie Verification",
                  subtitle: "Please, verify your identity.",
                ),
              ),
              Padding(
                padding: mainBodyPadding,
                child: Column(
                  children: [
                    Text(
                      "Our team will review the selfie so please make sure your selfie is without sunglasses, clear face and with no group.",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: Get.height * 0.10),
                      child: SizedBox(
                        width: Get.width * 0.55,
                        child: Image.asset(
                          "assets/images/selfie_image_template.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.030),
                      child: CustomButton(
                        name: "Take a Selfie",
                        onClick: nextScreen,
                        color: ThemeColors().buttonColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.01),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: backScreen,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.01,
                              horizontal: Get.width * 0.02),
                          child: Text(
                            "Not Now",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void nextScreen() async {
    /*if (_formKey.currentState!.validate()) {*/
    Get.toNamed(RoutesClass.homeScreen);
    /*}*/
  }

  void backScreen() {
    Get.back();
  }
}
