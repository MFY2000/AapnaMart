import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/TextFeild/PasswordTextFeild.dart';
import 'package:apna_mart/Components/TextFeild/PrimaryTextFeild.dart';
import 'package:apna_mart/Components/CheckBox/PrimaryCheckBox.dart';
import 'package:apna_mart/Utils/Constants.dart';
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
  final _phone = TextEditingController();
  final _address = TextEditingController();
  final _cnic = TextEditingController();
  final _cnicIssueDate = TextEditingController();
  bool isLoader = false;

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
                  Text(welcomeMessage,
                      style: Theme.of(context).textTheme.displaySmall),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          PrimaryTextFeild(
                            controller: _phone,
                            label: 'Phone Number',
                          ),
                          PrimaryTextFeild(
                            controller: _address,
                            label: "Address",
                          ),
                          PrimaryTextFeild(
                            controller: _cnic,
                            label: 'CNIC',
                          ),
                          PrimaryTextFeild(
                            controller: _cnicIssueDate,
                            label: 'CNIC Issue Date',
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
                      isLoading: isLoader,
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
      var body = {
        "cnic": _cnic.text,
        "cnicIssueDate": _cnicIssueDate.text,
        "address": _address.text,
        "phone": _phone.text,
      };
      var id = storage.read("user");

      var respones = await api.put(api.register + id, body);

      if (respones != null) {
        storage.write("Profile", true);
        Get.offAndToNamed("/home");
      }
    }

    setState(() {
      isLoader = false;
    });
  }
}
