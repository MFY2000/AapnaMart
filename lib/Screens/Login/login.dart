import 'dart:math';

import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/DropDown/PrimaryDropDown.dart';
import 'package:apna_mart/Components/TextFeild/PasswordTextFeild.dart';
import 'package:apna_mart/Components/TextFeild/PrimaryTextFeild.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:show_up_animation/show_up_animation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  int typeOfUser = 0;
  bool isWorker = false;
  bool isLoader = false;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _admin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
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
                            ShowUpAnimation(
                              animationDuration:
                                  const Duration(milliseconds: 700),
                              curve: Curves.decelerate,
                              direction: Direction.horizontal,
                              offset: 0.6,
                              child: renderDifferentWidget(),
                            ),
                          ]),
                    ),
                  ),
                  PrimaryBtn(
                      isLoading: isLoader,
                      title: typeOfUser == 0
                          ? "Continue"
                          : (typeOfUser == 1 ? "Login" : "Register"),
                      ontapFunc: ontap),
                ]),
          ),
        ));
  }

  ontap() async {
    setState(() {
      isLoader = true;
    });

    if (_formKey.currentState!.validate()) {
      switch (typeOfUser) {
        case 0:
          await onContinue();
          break;
        case 1:
          await login();
          break;
        default:
          await register();
          break;
      }
    }

    setState(() {
      isLoader = false;
    });
  }

  onContinue() async {
    var respones = await api.post(api.getEmail, {"email": _email.text});
    if (respones != null) {
      setState(() {
        typeOfUser = respones["isUser"] ? 1 : 2;
      });
    } else {
      Get.snackbar("Error", respones["message"] ?? "Something went wrong");
    }
  }

  login() async {
    var respones = await api
        .post(api.login, {"email": _email.text, "password": _password.text});

    if (respones != null &&
        respones["user"] != null &&
        respones["user"] != {} &&
        respones["code"] == null) {
      var user = respones["user"][0];
      if (user["id"] != null) {
        var screen = "/home2";

        storage.write("user", user["id"]);

        if (user == "customer" || user == "Customer") {
          var isProfile = user["cnic"] != null;
          screen = isProfile ? "/home" : "/profile";
          storage.write("Profile", isProfile);
        } else {
          storage.write("worker", true);
        }
        profileData = user;
        // Get.offAndToNamed(screen);
      }
    } else {
      Get.snackbar("Error", respones["message"] ?? "Something went Wrong");
    }
  }

  register() async {
    var body = {
      "email": _email.text,
      "password": _password.text,
      "name": _username.text,
      "type": isWorker ? "Worker" : "Customer",
    };
    var path = api.register;

    if (isWorker) {
      path = api.registerWorker;
      body["adminkey"] = _admin.text;
    }

    var respones = await api.post(path, body);
    if (respones != null &&
        respones["code"] == null &&
        respones["code"] != 400) {
      if (respones["user"]["id"] != null) {
        storage.write("user", respones["user"]["id"]);
        if (!isWorker) {
          storage.write("Profile", false);
          Get.offAndToNamed("/successfull");
        } else {
          storage.write("worker", true);
          Get.offAndToNamed("/home2");
        }

        profileData = respones["user"][0];
      } else {
        Get.snackbar("Error", respones["message"] ?? "Something went wrong");
      }
    }
  }

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
              productItems: const ["Customer", "Worker"],
              label: 'Customer',
              onChanged: (value) {
                setState(() {
                  isWorker = value == "Worker";
                });
              },
            ),
            if (isWorker)
              PrimaryTextFeild(
                controller: _admin,
                label: 'Admin Key',
              ),
          ],
        );

      default:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            "Just Write your Email",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        );
    }
  }
}
