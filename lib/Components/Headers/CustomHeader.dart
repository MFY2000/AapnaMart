import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class CustomHeader extends StatelessWidget {
  final String name;

  const CustomHeader({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: previousScreen,
              child: Icon(
                Icons.arrow_back_ios_rounded,
                size: 20,
                color: ThemeColors().iconColor,
              ),
            ),
            Flexible(
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: CustomTheme().onBoardingSubHeadingFontSize,
                    color: ThemeColors().buttonColor,
                  ),
                ),
              ),
            ),
            const SizedBox(),
          ],
        ),
      ],
    );
  }
  void previousScreen() {
    Get.back();
  }
}
