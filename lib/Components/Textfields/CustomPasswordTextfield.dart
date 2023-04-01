import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class CustomPasswordTextfield extends StatefulWidget {
  bool isHidden;
  final TextEditingController controller;
  final String label;
  final TextInputType inputType;

  CustomPasswordTextfield({
    super.key,
    required this.controller,
    required this.label,
    this.isHidden = true,
    this.inputType = TextInputType.text,
  });

  @override
  State<CustomPasswordTextfield> createState() => _CustomPasswordTextfieldState();
}

class _CustomPasswordTextfieldState extends State<CustomPasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Get.height * 0.02),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: ThemeColors().labelTextColor,
        obscureText: widget.isHidden,
        /*textInputAction: TextInputAction.next,*/
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter ${widget.label}';
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
          hintStyle: TextStyle(
            color: ThemeColors().buttonColor,
          ),
          /*labelStyle: TextStyle(
                        color: ThemeColors().labelTextColor,
                      ),*/
          /*labelText: "Password",*/
          hintText: widget.label,
          suffixIconConstraints: BoxConstraints(minWidth: 24, minHeight: 24,),
          suffixIcon: GestureDetector(
            onTap: togglePasswordView,
            child: Padding(
              padding: EdgeInsets.only(right: Get.width * 0.02,),
              child: Icon(
                widget.isHidden
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: ThemeColors().iconColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
  void togglePasswordView() {
    setState(() {
      widget.isHidden = !widget.isHidden;
    });
  }
}
