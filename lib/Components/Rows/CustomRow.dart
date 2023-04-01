import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final Widget icon;
  final Color containerColor;
  final Color borderColor;
  final VoidCallback onClick;

  const CustomRow({
    super.key,
    required this.title,
    required this.icon,
    required this.borderColor,
    required this.containerColor,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Get.height * 0.01),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: () {
          onClick();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: ThemeColors().buttonColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: containerColor,
                    border: Border.all(
                      color: borderColor,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Get.height * 0.02,
                        horizontal: Get.width * 0.02),
                    child: icon,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
