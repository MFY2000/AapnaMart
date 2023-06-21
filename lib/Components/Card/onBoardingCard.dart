import 'package:apna_mart/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../Utils/CustomTheme.dart';

class onBoardingCard extends StatelessWidget {
  final String heading;
  final String subHeading;
  final String image;
  final double scale;

  onBoardingCard({
    required this.heading,
    required this.subHeading,
    required this.image,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 700),
                curve: Curves.decelerate,
                direction: Direction.horizontal,
                offset: 0.6,
                child: Image.asset(
                  image,
                  scale: scale,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 900),
                curve: Curves.decelerate,
                direction: Direction.horizontal,
                offset: 01,
                child: Padding(
                  padding: mainBodyPadding,
                  child: Text(
                    heading,
                    style: TextStyle(
                      fontSize: CustomTheme().mediumSize,
                      color: CustomTheme().fontsColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 1200),
                curve: Curves.decelerate,
                direction: Direction.horizontal,
                offset: 0.5,
                child: Padding(
                  padding: mainBodyPadding,
                  child: Text(
                    subHeading,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: CustomTheme().smallSize,
                      color: CustomTheme().fontsColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

