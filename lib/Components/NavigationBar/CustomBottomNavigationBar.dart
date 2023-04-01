import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/Routes.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      iconSize: 30,
      selectedItemColor: ThemeColors().buttonColor,
      unselectedItemColor: ThemeColors().dividerColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_rounded,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
          ),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
          ),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: "Settings",
        ),
      ],
    );
  }
}
