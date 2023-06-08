import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileInfoRow extends StatelessWidget {
  final String name;
  final String subtext;
  final String profilePic;

  const ProfileInfoRow({
    super.key,
    required this.name,
    required this.subtext,
    this.profilePic = "assets/images/sample_profile_pic.png",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: Get.width * 0.15,
          child: ClipOval(
            child:  Image.asset(
                          profilePic,
                          scale: 2.0,
                          fit: BoxFit.cover,
                        ),
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
                      color: CustomTheme().fontsColor,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                ],
              ),
              Text(
                subtext,
                style: TextStyle(
                  fontSize: 12,
                  color: CustomTheme().primaryBTN,
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
