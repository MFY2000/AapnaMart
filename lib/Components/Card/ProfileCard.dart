import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/Routes.dart';

import '../../Utils/ThemeColors.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String age;

  ProfileCard({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed(RoutesClass.membersProfileScreen);
      },
      child: Container(
        width: Get.width * 0.39,
        margin: EdgeInsets.only(right: Get.width * 0.02),
        padding: EdgeInsets.only(
          left: Get.width * 0.03,
          bottom: Get.height * 0.01,
          right: Get.width * 0.03,
        ),
        decoration: BoxDecoration(
          color: ThemeColors().containerColor,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                  text: name,
                  style: TextStyle(
                    fontSize: 18,
                    color: ThemeColors().buttonColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: age,
                      style: TextStyle(
                        fontSize: 18,
                        color: ThemeColors().buttonColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
