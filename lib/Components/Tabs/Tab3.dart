import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

import '../../Utils/Constants.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: mainBodyPadding,
        child: Column(
          children: [
            ShowUpAnimation(
              animationDuration: const Duration(milliseconds: 900),
              curve: Curves.decelerate,
              direction: Direction.horizontal,
              offset: 0.5,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                child: Image.asset(
                  "assets/images/career_image.png",
                  scale: 2,
                ),
              ),
            ),
            ShowUpAnimation(
              animationDuration: const Duration(milliseconds: 900),
              delayStart: const Duration(milliseconds: 300),
              curve: Curves.decelerate,
              direction: Direction.horizontal,
              offset: 0.5,
              child: Text(
                "Careers",
                style: TextStyle(
                  fontSize: 32,
                  color: ThemeColors().buttonColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.04),
              child: ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 900),
                delayStart: const Duration(milliseconds: 500),
                curve: Curves.decelerate,
                direction: Direction.horizontal,
                offset: 0.5,
                child: Text(
                  textAlign: TextAlign.center,
                  "Become a part of potential Job hunting with us.",
                  style: TextStyle(
                    fontSize: 22,
                    color: ThemeColors().careerDetailsColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            ShowUpAnimation(
              animationDuration: const Duration(milliseconds: 900),
              delayStart: const Duration(milliseconds: 900),
              curve: Curves.easeOutCubic,
              direction: Direction.vertical,
              offset: 0.5,
              child: SizedBox(
                width: Get.width * 0.6,
                child: CustomButton(
                  name: "Apply Now",
                  onClick: () {},
                  color: ThemeColors().buttonColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
