// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/CustomTheme.dart';

CustomAppBar() {
  return AppBar(
    toolbarHeight: Get.height * .1,
    backgroundColor: CustomTheme().lightColor,
    automaticallyImplyLeading: false,
    elevation: 0,
    leading: Icon(Icons.person, color: CustomTheme().secondaryColor, size: 30),
    title: Center(
        child: Image.asset(
      "assets/images/logo.png",
      height: Get.height * .1,
    )),
    actions: [
      Icon(Icons.qr_code_scanner_rounded,
          color: CustomTheme().darkColor, size: 30),
      SizedBox(
        width: Get.width * .05,
      )
    ],
  );
}


CustomAppBar2() {
  return AppBar(
    toolbarHeight: Get.height * .1,
    backgroundColor: CustomTheme().lightColor,
    automaticallyImplyLeading: false,
    elevation: 0,
    leading: Icon(Icons.person, color: CustomTheme().secondaryColor, size: 30),
    title: Center(
        child: Image.asset(
      "assets/images/logo.png",
      height: Get.height * .1,
    )),
    actions: [
      Icon(Icons.notifications,
          color: CustomTheme().darkColor, size: 30),
      SizedBox(
        width: Get.width * .05,
      )
    ],
  );
}