import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Components/Buttons/CustomButton.dart';
import '../../../Components/Textfields/CustomTextfield2.dart';
import '../../../Components/Headers/HeaderWithBackIcon.dart';
import '../../../Utils/Routes.dart';
import '../../../Utils/ThemeColors.dart';
import '../../../Utils/Constants.dart';
class ForgetPasswordScreenOTP extends StatefulWidget {
  const ForgetPasswordScreenOTP({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreenOTP> createState() => _ForgetPasswordScreenOTPState();
}

class _ForgetPasswordScreenOTPState extends State<ForgetPasswordScreenOTP> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController opt1ForgetPasswordController = TextEditingController();
  TextEditingController opt2ForgetPasswordController = TextEditingController();
  TextEditingController opt3ForgetPasswordController = TextEditingController();
  TextEditingController opt4ForgetPasswordController = TextEditingController();
  TextEditingController opt5ForgetPasswordController = TextEditingController();

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderWithBackIcon(
                      title: "OTP Verification",
                      subtitle: "Enter the Verification Code we just sent you on your Email Address.",
                  ),
                  Padding(
                    padding: mainBodyPadding,
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.04 ,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: CustomTextfield2(controller: opt1ForgetPasswordController),),
                            Expanded(child: CustomTextfield2(controller: opt2ForgetPasswordController),),
                            Expanded(child: CustomTextfield2(controller: opt3ForgetPasswordController),),
                            Expanded(child: CustomTextfield2(controller: opt4ForgetPasswordController),),
                            Expanded(child: CustomTextfield2(controller: opt5ForgetPasswordController),),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Didn't receive a Code?",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(
                                width: Get.width * 0.01,
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: Text(
                                  "Resend",
                                  style: Theme.of(context).textTheme.headlineLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.435),
                          child: CustomButton(
                              name: 'Reset Password',
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
      Get.toNamed(RoutesClass.newPasswordScreen);
   /* }*/
  }
}
