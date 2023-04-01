import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../Components/Buttons/CustomButton.dart';
import '../../../Components/Textfields/CustomPasswordTextfield.dart';
import '../../../Components/Textfields/CustomTextfield3.dart';
import '../../../Utils/Routes.dart';
import '../../../Utils/ThemeColors.dart';
import '../../../Utils/Constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,// status bar color
      ));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding:  mainBodyPadding,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(top:Get.height * 0.01),
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
                          children:[
                            TextSpan(
                              text: ' MILUN',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ]
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  CustomTextfield3(
                    controller: emailController,
                      label: "Email"
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  CustomPasswordTextfield(
                    controller: passwordController,
                    label: "Password",
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: toForgetPassScreen,
                        child: Text(
                          'Forget Password?',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Alternative Login',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Image.asset(
                        'assets/images/fingerprint.png',
                        height: Get.height * 0.05,
                        width: Get.width * 0.15,
                      ),
                    ],
                  ),
                  CustomButton(
                    name: "Login",
                    onClick: nextScreen,
                    color: ThemeColors().buttonColor,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        width: Get.width * 0.01,
                      ),
                      GestureDetector(
                        onTap: toSignUpScreen,
                        child: Text(
                          "Sign Up",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void toForgetPassScreen() async {
    Get.toNamed(RoutesClass.forgetPasswordScreen);
  }

  void toSignUpScreen() async {
    Get.toNamed(RoutesClass.signupPage);
  }

  void nextScreen() async {
    /*if (_formKey.currentState!.validate()) {*/
      Get.toNamed(RoutesClass.homeScreen);
    /*}*/
  }
}
