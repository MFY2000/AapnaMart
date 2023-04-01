import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class CustomTextfield3 extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType inputType;

  const CustomTextfield3({
    super.key,
    required this.controller,
    required this.label,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Get.height * 0.02),
      child: TextFormField(
        cursorColor: ThemeColors().labelTextColor,
        controller: controller,
        keyboardType: inputType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter $label';
          }
          return null;
        },
        style: TextStyle(
          color: ThemeColors().onBoardingHeadingColor,
        ),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColors().enabledBorderColor,
            ),
          ),
          errorStyle: TextStyle(
              height: -1,
              color: CustomTheme().errorColor,
            ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomTheme().errorColor,
              width: CustomTheme().errorBorderWidth,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: ThemeColors().labelTextColor,
            ),
          ),
          contentPadding: EdgeInsets.all(CustomTheme().paddingInput),
          /*labelStyle: TextStyle(
            color: ThemeColors().labelTextColor,
          ),*/
          hintStyle: TextStyle(
            color: ThemeColors().buttonColor,
          ),
          /*labelText: label,*/
          hintText: "$label",
        ),
      ),
    );
  }
}
