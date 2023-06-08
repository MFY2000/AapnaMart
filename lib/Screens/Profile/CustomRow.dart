import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return InkWell(
      onTap: (){
        onClick();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.045),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Get.height * 0.010,horizontal: Get.width * 0.025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: CustomTheme().primaryBTN,
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
                    padding: EdgeInsets.symmetric(vertical: Get.height * 0.02, horizontal: Get.width * 0.02),
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