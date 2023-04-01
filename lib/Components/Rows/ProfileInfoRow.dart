import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/ThemeColors.dart';

class ProfileInfoRow extends StatelessWidget {
  final String name;
  final String subtext;
  final Image profilePic;

  const ProfileInfoRow({
    super.key,
    required this.name,
    required this.subtext,
    required this.profilePic,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipOval(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: ThemeColors().profileBorderColor,
              ),
            ),
            child: profilePic,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: ThemeColors().onBoardingHeadingColor,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Image.asset(
                    "assets/images/gold_badge.png",
                    scale: 2,
                  ),
                ],
              ),
              Text(
                subtext,
                style: TextStyle(
                  fontSize: 12,
                  color: ThemeColors().buttonColor,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
