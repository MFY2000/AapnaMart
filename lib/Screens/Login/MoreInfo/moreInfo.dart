import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/TextFeild/PasswordTextFeild.dart';
import 'package:apna_mart/Components/TextFeild/PrimaryTextFeild.dart';
import 'package:apna_mart/Components/CheckBox/PrimaryCheckBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class moreInfo extends StatefulWidget {
  const moreInfo({super.key});

  @override
  State<moreInfo> createState() => _moreInfoState();
}

class _moreInfoState extends State<moreInfo> {
  bool isAgree = false;
  final _formKey = GlobalKey<FormState>();

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
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                      style: Theme.of(context).textTheme.displaySmall),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          PrimaryTextFeild(
                            typeOfFeild: 2,
                            controller: TextEditingController(),
                            label: 'Email',
                          ),
                          PasswordTextFeild(
                            controller: TextEditingController(),
                            label: "Address",
                            normal: Icons.location_searching,
                          ),
                          PrimaryTextFeild(
                            typeOfFeild: 2,
                            controller: TextEditingController(),
                            label: 'CNIC',
                          ),
                          PrimaryTextFeild(
                            typeOfFeild: 2,
                            controller: TextEditingController(),
                            label: 'Issue Date',
                          ),
                        ],
                      )),
                  SizedBox(height: Get.height * .05),
                  PrimaryCheckBox(
                      onChange: (value) => setState(() {
                            isAgree = value!;
                          }),
                      value: isAgree,
                      text: "Yes, I have read & agree to policy"),
                  PrimaryBtn(
                      title: "Procced",
                      isDisable: !isAgree,
                      ontapFunc: () {
                        // if (_formKey.currentState!.validate()) {
                        Get.offAndToNamed("/home");
                        // } else {
                        //   print("Pls Fill Form");
                        // }
                      }),
                ]),
          ),
        ));
  }
}
