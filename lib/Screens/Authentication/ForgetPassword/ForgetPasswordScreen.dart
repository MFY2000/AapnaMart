import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/Constants.dart';

import '../../../Components/Buttons/CustomButton.dart';
import '../../../Components/Textfields/CustomTextField4.dart';
import '../../../Components/Headers/HeaderWithBackIcon.dart';
import '../../../Utils/Routes.dart';
import '../../../Utils/ThemeColors.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailForgetScreenController = TextEditingController();

  @override
  void dispose() {
    emailForgetScreenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: headerPadding,
              child: Column(
                children: [
                  HeaderWithBackIcon(
                    title: "Forget Password",
                    subtitle:
                        "Enter the Email Address associated with your Account.",
                  ),
                  Padding(
                    padding: mainBodyPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.04,
                        ),
                        CustomTextfield4(
                          controller: emailForgetScreenController,
                          label: "Email",
                          inputType: TextInputType.text,
                          hint: "Enter Email",
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.53),
                          child: CustomButton(
                              name: 'Next',
                              onClick: nextScreen,
                              color: ThemeColors().buttonColor),
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
    /*if (_formKey.currentState!.validate()) {*/
    Get.toNamed(RoutesClass.forgetPassScreenOTP);
    /*}*/
  }
}
