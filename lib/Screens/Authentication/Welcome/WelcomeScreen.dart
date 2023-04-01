import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Components/Buttons/SocialButton.dart';
import 'package:apna_mart/Screens/Authentication/Login/LoginScreen.dart';
import 'package:apna_mart/Screens/Authentication/SignUp/SignUpScreen.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';
import 'package:apna_mart/Utils/Constants.dart';

import '../../../Utils/Routes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark, // status bar color
    ));

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: mainBodyPadding,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.01),
                      child: Image.asset(
                        'assets/images/soulmilan_flower_logo.png',
                        height: Get.height * 0.25,
                        width: Get.width * 0.6,
                      ),
                    ),
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                          text: 'SOUL',
                          style: Theme.of(context).textTheme.displayLarge,
                          children: [
                            TextSpan(
                              text: ' MILUN',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    "Welcome to Soulmilun",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                    child: Column(
                      children: [
                        SocialButton(
                          label: "Google",
                          icon: 'assets/icons/Social/googleicon.png',
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        SocialButton(
                          label: "Facebook",
                          icon: 'assets/icons/Social/facebookicon.png',
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        SocialButton(
                          label: "Apple",
                          icon: 'assets/icons/Social/appleicon.png',
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        GestureDetector(
                          onTap: toLoginScreen,
                          child: SocialButton(
                            label: "Email",
                            icon: 'assets/icons/Social/mailicon.png',
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Divider(
                                color: ThemeColors().containerOutlineColor,
                                thickness: Get.height * 0.002,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.04),
                              child: Text(
                                "or",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: ThemeColors().containerOutlineColor,
                                thickness: Get.height * 0.002,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        CustomButton(
                          name: "Sign Up",
                          onClick: nextScreen,
                          color: ThemeColors().buttonColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void nextScreen() async {
    Get.toNamed(RoutesClass.signupPage);
  }

  void toLoginScreen() async {
    Get.toNamed(RoutesClass.logInPage);
  }
}
