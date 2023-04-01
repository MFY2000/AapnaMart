import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Components/Card/ProfileLayoutCard.dart';
import 'package:apna_mart/Components/DropDowns/CustomDropDown2.dart';
import 'package:apna_mart/Components/Headers/CustomHeader2.dart';
import 'package:apna_mart/Utils/Constants.dart';

import '../../Components/NavigationBar/CustomBottomNavigationBar.dart';
import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class MembersProfileScreen extends StatefulWidget {
  const MembersProfileScreen({Key? key}) : super(key: key);

  @override
  State<MembersProfileScreen> createState() => _MembersProfileScreenState();
}

class _MembersProfileScreenState extends State<MembersProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: subscriptionBodyPadding,
                child: Column(children: [
                  SizedBox(
                    height: Get.height * 0.018,
                  ),
                  const CustomHeader2(),
                ]),
              ),
              Padding(
                padding: mainBodyPadding,
                child: Column(
                  children: [
                    const ProfileLayoutCard(
                      name: "Fahad",
                      age: "22",
                      detail1: "Software Engineer",
                      detail2: "Sunni",
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Get.height * 0.015,
                      ),
                      child: SizedBox(
                        width: Get.width * 0.5,
                        child: CustomButton(
                          name: "See Full Profile",
                          onClick: () {},
                          color: ThemeColors().buttonColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
