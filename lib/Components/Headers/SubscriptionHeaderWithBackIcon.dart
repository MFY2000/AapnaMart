import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class SubscriptionHeader extends StatelessWidget {
  final String text1;
  final String text2;

  const SubscriptionHeader({
    super.key,
    required this.text1,
    required this.text2,
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
                child: Text.rich(
                TextSpan(
                  text: text1,
                  style: TextStyle(
                    color: ThemeColors().soulColor,
                    fontSize: CustomTheme().soulMilanSubscriptionFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                  children:[
                    TextSpan(
                      text: text2,
                      style: TextStyle(
                        color: ThemeColors().milanColor,
                        fontSize: CustomTheme().soulMilanSubscriptionFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
