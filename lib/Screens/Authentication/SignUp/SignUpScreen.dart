import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Headers/HeaderWithBackIcon.dart';
import 'package:apna_mart/Components/Textfields/CustomTextfield.dart';
import 'package:apna_mart/Utils/Constants.dart';

import '../../../Components/Buttons/CustomButton.dart';
import '../../../Components/Headers/Header.dart';
import '../../../Components/Textfields/CustomPasswordTextfield2.dart';
import '../../../Utils/Routes.dart';
import '../../../Utils/ThemeColors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController signUpScreenNameController = TextEditingController();
  TextEditingController signUpScreenEmailController = TextEditingController();
  TextEditingController signUpScreenPasswordController =
      TextEditingController();
  TextEditingController signUpScreenConfirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    signUpScreenNameController.dispose();
    signUpScreenEmailController.dispose();
    signUpScreenPasswordController.dispose();
    signUpScreenConfirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: headerPadding,
                  child: HeaderWithBackIcon(
                    title: "Create Account",
                    subtitle: "Please, create your Account.",
                  ),
                ),
                Padding(
                  padding: mainBodyPadding,
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      CustomTextfield(
                        controller: signUpScreenNameController,
                        label: "Name",
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      CustomTextfield(
                        controller: signUpScreenEmailController,
                        label: "Email",
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      CustomPasswordTextfield2(
                          controller: signUpScreenPasswordController,
                          label: "Password"),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      CustomPasswordTextfield2(
                          controller: signUpScreenConfirmPasswordController,
                          label: "Confirm Password"),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Before Sign up, make sure you read our",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: toPolicyScreen,
                                  child: Text(
                                    "Privacy policy.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.035),
                        child: CustomButton(
                          name: "Sign Up",
                          onClick: nextScreen,
                          color: ThemeColors().buttonColor,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: Get.width * 0.01,
                          ),
                          GestureDetector(
                            onTap: toLoginScreen,
                            child: Text(
                              "Login",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void toLoginScreen() async {
    Get.toNamed(RoutesClass.logInPage);
  }

  void nextScreen() async {
    /*if (_formKey.currentState!.validate()) {*/
    Get.toNamed(RoutesClass.verificationScreen);
    /*}*/
  }

  void toPolicyScreen() async {
    Get.toNamed(RoutesClass.policyScreen);
  }
}
