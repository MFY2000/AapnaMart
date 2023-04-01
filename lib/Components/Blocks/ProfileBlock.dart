import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/ThemeColors.dart';
import '../Card/ProfileCard.dart';

class ProfileBlock extends StatefulWidget {
  final String title;
  const ProfileBlock({Key? key, required this.title}) : super(key: key);

  @override
  State<ProfileBlock> createState() => _ProfileBlockState();
}

class _ProfileBlockState extends State<ProfileBlock> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.35,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: Get.height * 0.040, bottom: Get.height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 18,
                    color: ThemeColors().buttonColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View More",
                  style: TextStyle(
                    fontSize: 14,
                    color: ThemeColors().buttonColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                ProfileCard(name: "Fahad,", age: " 23"),
                ProfileCard(name: "Hassan,", age: " 23"),
                ProfileCard(name: "Fahad,", age: " 23"),
                ProfileCard(name: "Hassan,", age: " 23"),
                ProfileCard(name: "Fahad,", age: " 23"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
