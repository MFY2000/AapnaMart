import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/ThemeColors.dart';

class HeaderWithBackIcon extends StatelessWidget {
  final String title;
  final String subtitle;

 HeaderWithBackIcon({
    super.key,
    required this.title,
    this.subtitle = "",
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:GestureDetector(
        onTap: backScreen,
        child: Icon(
          Icons.arrow_back_ios_rounded,
          size: 20,
          color: ThemeColors().iconColor,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
  void backScreen() {
    Get.back();
  }
}
