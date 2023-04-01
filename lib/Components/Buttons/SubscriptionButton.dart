import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

class SubscriptionButton extends StatelessWidget {
  final VoidCallback onClick;
  final Color color;

  SubscriptionButton({super.key, required this.onClick, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
          child: Text(
            "View Plan",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 13.0,
                color: ThemeColors().buttonColor,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
