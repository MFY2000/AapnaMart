import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

import '../../../Components/Buttons/CustomButton.dart';
import '../../../Components/Textfields/CustomTextfield2.dart';
import '../../../Components/Headers/HeaderWithBackIcon.dart';
import '../../../Utils/Constants.dart';
import '../../../Utils/Routes.dart';

class VerificationScreenOTP extends StatefulWidget {
  const VerificationScreenOTP({Key? key}) : super(key: key);

  @override
  State<VerificationScreenOTP> createState() => _VerificationScreenOTPState();
}

class _VerificationScreenOTPState extends State<VerificationScreenOTP> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController opt1Controller = TextEditingController();
  TextEditingController opt2Controller = TextEditingController();
  TextEditingController opt3Controller = TextEditingController();
  TextEditingController opt4Controller = TextEditingController();
  TextEditingController opt5Controller = TextEditingController();

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
                    subtitle:
                        "Enter OTP code we sent you on your Mobile Number.",
                  ),
                  Padding(
                    padding: mainBodyPadding,
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.001,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child:
                                  CustomTextfield2(controller: opt1Controller),
                            ),
                            Expanded(
                              child:
                                  CustomTextfield2(controller: opt2Controller),
                            ),
                            Expanded(
                              child:
                                  CustomTextfield2(controller: opt3Controller),
                            ),
                            Expanded(
                              child:
                                  CustomTextfield2(controller: opt4Controller),
                            ),
                            Expanded(
                              child:
                                  CustomTextfield2(controller: opt5Controller),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.06),
                          child: Center(
                            child: Text(
                              "00:30",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.02),
                          child: Center(
                            child: Text(
                              "Resend",
                              style: TextStyle(
                                color: ThemeColors().onBoardingHeadingColor,
                                fontSize: CustomTheme().fontSize,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.405),
                          child: CustomButton(
                            name: "Confirm Verification",
                            onClick: nextScreen,
                            color: ThemeColors().buttonColor,
                          ),
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
    Get.toNamed(RoutesClass.saveAccountScreen);
    /*}*/
  }
}
