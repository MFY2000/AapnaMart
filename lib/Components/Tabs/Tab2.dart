import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Blocks/TourBlock.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

import '../../Utils/Constants.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: tab2Padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Pick your tour around Soul",
                  style: TextStyle(
                    fontSize: 18,
                    color: ThemeColors().buttonColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Get.width * 0.04),
                  child: Image.asset(
                    "assets/icons/tour_icon.png",
                    scale: 20,
                  ),
                ),
              ],
            ),
            TourBlock(
              title: "Male",
              image: Image.asset(
                "assets/icons/male_user_icon.png",
                scale: 2.8,
              ),
            ),
            TourBlock(
              title: "Female",
              image: Image.asset(
                "assets/icons/female_user_icon.png",
                scale: 2.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
