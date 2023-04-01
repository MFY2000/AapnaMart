import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType inputType;

  const CustomTextfield({
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
          suffixIconConstraints: BoxConstraints(minWidth: 24, minHeight: 24,),
          suffixIcon: Padding(
            padding: EdgeInsets.only(top: Get.height *0.02),
            child: IconButton(
              onPressed: controller.clear,
              icon: const Icon(Icons.clear_rounded),
              iconSize: 20,
              color: Colors.grey,
            ),
          ),
          labelStyle: TextStyle(
            color: ThemeColors().labelTextColor,
          ),
          hintStyle: TextStyle(
            color: ThemeColors().buttonColor,
            fontSize: 13,
          ),
          labelText: label,
          hintText: "Enter $label",
        ),
      ),
    );
  }
}
