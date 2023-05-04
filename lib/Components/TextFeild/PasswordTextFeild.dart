import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class PasswordTextFeild extends StatefulWidget {
  bool isHidden;
  bool isGenerated;
  final TextEditingController controller;
  final String label;
  final TextInputType inputType;

  PasswordTextFeild({
    super.key,
    required this.controller,
    required this.label,
    this.isHidden = true,
    this.isGenerated = false,
    this.inputType = TextInputType.text,
  });

  @override
  State<PasswordTextFeild> createState() => _PasswordTextFeildState();
}

class _PasswordTextFeildState extends State<PasswordTextFeild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Get.height * 0.02),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: CustomTheme().fontsColor,
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
          // contentPadding: EdgeInsets.all(CustomTheme().paddingInput),
          labelStyle: TextStyle(
            color: CustomTheme().fontsColor,
          ),
          hintStyle: TextStyle(
            color: CustomTheme().primaryBTN,
            fontSize: 13,
          ),
          labelText: widget.label,
          hintText: 'Enter ${widget.label}',
          suffixIconConstraints: const BoxConstraints(
            minWidth: 24,
            minHeight: 24,
          ),
          suffixIcon: GestureDetector(
            onTap: togglePasswordView,
            child: Padding(
              padding: EdgeInsets.only(
                  right: Get.width * 0.025, top: Get.height * 0.02),
              child: Icon(
                widget.isHidden ? Icons.visibility : Icons.visibility_off,
                size: 23,
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
