import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

class CustomRadioButtons extends StatefulWidget {
  final String option1;
  final String option2;

  CustomRadioButtons({
    super.key,
    required this.option1,
    required this.option2,
  });

  @override
  State<CustomRadioButtons> createState() => _CustomRadioButtonsState();
}

class _CustomRadioButtonsState extends State<CustomRadioButtons> {
  String radioItem = '';

  @override
  void initState() {
    radioItem = widget.option1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              radioItem = widget.option1;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Transform.scale(
                scale: 1.0,
                child: Radio(
                  activeColor: ThemeColors().buttonColor,
                  groupValue: radioItem,
                  value: widget.option1,
                  onChanged: (value) {
                    setState(() {
                      radioItem = value.toString();
                    });
                  },
                ),
              ),
              Text(
                widget.option1,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: ThemeColors().buttonColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: Get.width * 0.04,
        ),
        InkWell(
          onTap: () {
            setState(() {
              radioItem = widget.option2;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Transform.scale(
                scale: 1.0,
                child: Radio(
                  activeColor: ThemeColors().buttonColor,
                  groupValue: radioItem,
                  value: widget.option2,
                  onChanged: (value) {
                    setState(() {
                      radioItem = value.toString();
                    });
                  },
                ),
              ),
              Text(
                widget.option2,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: ThemeColors().buttonColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
