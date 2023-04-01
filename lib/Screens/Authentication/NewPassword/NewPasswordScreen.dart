import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Utils/Constants.dart';

import '../../../Components/Headers/Header.dart';
import '../../../Components/Headers/HeaderWithBackIcon.dart';
import '../../../Components/Textfields/CustomPasswordTextfield.dart';
import '../../../Utils/Routes.dart';
import '../../../Utils/ThemeColors.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController createPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    createPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
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
                    const Header(
                      title: "New Password",
                      subtitle: "Enter New Password for your Account.",
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    Padding(
                      padding: mainBodyPadding,
                      child: Column(
                        children: [
                          CustomPasswordTextfield(
                            controller: createPasswordController,
                            label: "Password",
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          CustomPasswordTextfield(
                            controller: confirmPasswordController,
                            label: "Confirm Password",
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: Get.height * 0.405),
                            child: CustomButton(
                                name: 'Continue',
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
      ),
    );
  }

  void nextScreen() async {
    /*if (_formKey.currentState!.validate()) {*/
    Get.toNamed(RoutesClass.logInPage);
    /*}*/
  }
}
