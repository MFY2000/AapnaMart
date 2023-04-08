import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/Routes.dart';
import '../../Utils/ThemeColors.dart';

class ProfileHeader extends StatelessWidget {
  final String title;

  const ProfileHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
      dense: true,
      leading: const SizedBox(),
      title: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      trailing: GestureDetector(
        onTap: nextScreen,
        child: Image.asset(
          "assets/icons/settings_icon.png",
          color: ThemeColors().buttonColor,
          scale: 2,
        ),
      ),
    );
  }
  void nextScreen() async {
    // Get.toNamed(RoutesClass.profileSettingsScreen);
  }
}
