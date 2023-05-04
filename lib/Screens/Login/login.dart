import 'dart:math';

import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/DropDown/PrimaryDropDown.dart';
import 'package:apna_mart/Components/TextFeild/PasswordTextFeild.dart';
import 'package:apna_mart/Components/TextFeild/PrimaryTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  int typeOfUser = 0;
  bool isWorker = false;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
  // TextEditingController _username =  TextEditingController();
  // TextEditingController _ =  TextEditingController()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.1, vertical: Get.height * 0.07),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: Get.height * 0.2,
                    child: Image.asset("assets/images/logo.png",
                        fit: BoxFit.contain),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Get.height * .01),
                    child: Text(
                      "Welcome",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                  Text(
                      "Don’t have an account?  You may have? don’t your email? What is Sign in/Sign up? ",
                      style: Theme.of(context).textTheme.displaySmall),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: Get.height * 0.02,
                      top: Get.height * 0.05,
                    ),
                    // height: Get.height * 0.45,
                    child: Form(
                      key: _formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryTextFeild(
                              typeOfFeild: 2,
                              controller: _email,
                              label: 'Email',
                            ),
                            renderDifferentWidget(),
                          ]),
                    ),
                  ),
                  PrimaryBtn(
                      title: typeOfUser == 0
                          ? "Continue"
                          : (typeOfUser == 1 ? "Login" : "Register"),
                      ontapFunc: () {
                        if (_formKey.currentState!.validate()) {
                          print("Out Side Fill Form");
                          typeOfUser == 0
                              ? onContinue()
                              : typeOfUser == 1
                                  ? login()
                                  : register();
                        } else {
                          print("Pls Fill Form");
                        }
                      }),
                ]),
          ),
        ));
  }

  onContinue() {
    print("Validated");
    bool isEmail = _email.text == "f@gm.com";

    setState(() {
      typeOfUser = typeOfUser == 0 && isEmail ? 1 : 2;
    });
  }

  login() {}

  register() {}

  renderDifferentWidget() {
    switch (typeOfUser) {
      case 1:
        return PasswordTextFeild(
          controller: _password,
          label: 'Password',
        );
      case 2:
        return Column(
          children: [
            PrimaryTextFeild(
              controller: _username,
              label: 'User name',
            ),
            PasswordTextFeild(
              controller: _password,
              label: 'Password',
            ),
            PrimaryDropDown(
              productItems: ["aas", "asnad", "dsnkj"],
              label: 'aaa',
              onChanged: (value) {
                setState(() {
                  isWorker = true;
                });
              },
            ),
            if (isWorker)
              PrimaryTextFeild(
                controller: _password,
                label: 'Admin Key',
              ),
          ],
        );

      default:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "Just Write your Email, phone Number",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        );
    }
  }
}
