import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final VoidCallback onClick;
  final Color color;

  const CustomButton(
      {super.key,
      required this.name,
      required this.onClick,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.0065),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
