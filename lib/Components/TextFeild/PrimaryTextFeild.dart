// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final int typeOfFeild;
  final TextInputType inputType;

  const PrimaryTextFeild({
    super.key,
    required this.controller,
    required this.label,
    this.typeOfFeild = 1,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Get.height * 0.02),
      child: TextFormField(
        cursorColor: CustomTheme().fontsColor,
        controller: controller,
        keyboardType: inputType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (typeOfFeild == 2 && value != null && !GetUtils.isEmail(value)) {
            return 'Please Enter Valid $label';
          } else if (value == null || value.isEmpty) {
            return 'Please Enter $label';
          }
          return null;
        },
        style: TextStyle(
          color: CustomTheme().fontsColor,
        ),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomTheme().fontsColor,
            ),
          ),
          errorStyle: TextStyle(
            height: 0,
            color: CustomTheme().highlight,
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomTheme().highlight,
              width: CustomTheme().errorBorderWidth,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: CustomTheme().fontsColor,
            ),
          ),
          contentPadding: EdgeInsets.all(0),

          labelStyle: TextStyle(
            color: CustomTheme().fontsColor,
          ),
          hintStyle: TextStyle(
            color: CustomTheme().primaryBTN,
            fontSize: 13,
          ),
          labelText: label,
          // hintText: "Enter $label",
        ),
      ),
    );
  }
}
