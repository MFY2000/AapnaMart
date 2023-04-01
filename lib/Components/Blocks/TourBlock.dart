import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/ThemeColors.dart';
import '../Card/ProfileCard.dart';

class TourBlock extends StatefulWidget {
  final String title;
  final Image image;

  const TourBlock({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  State<TourBlock> createState() => _TourBlockState();
}

class _TourBlockState extends State<TourBlock> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.35,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: Get.height * 0.05, bottom: Get.height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 18,
                        color: ThemeColors().buttonColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.015,
                    ),
                    widget.image,
                  ],
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
          ),
        ],
      ),
    );
  }
}
