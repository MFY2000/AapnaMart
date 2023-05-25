import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:apna_mart/Utils/Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class CustombottomNavBar extends StatefulWidget {
  const CustombottomNavBar({super.key});

  @override
  State<CustombottomNavBar> createState() => _CustombottomNavBarState();
}

class _CustombottomNavBarState extends State<CustombottomNavBar> {
  void _onItemTapped(int index) {
    setState(() {
      selectedScreen = index;
      Get.toNamed(screenCount[index]["route"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 10,
        iconSize: 30,
        selectedItemColor: CustomTheme().primayColor,
        unselectedItemColor: CustomTheme().primaryBTN,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedScreen,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
            screenCount.length,
            (index) => BottomNavigationBarItem(
                  icon: Icon(screenCount[index]["icon"]),
                  label: screenCount[index]["name"],
                )));
  }
}
