import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

import '../../Components/Headers/ProfileHeader.dart';
import '../../Components/NavigationBar/CustomBottomNavigationBar.dart';
import '../../Components/Rows/ProfileInfoRow.dart';
import '../../Utils/Routes.dart';

class ProfileCompleteScreen extends StatefulWidget {
  const ProfileCompleteScreen({Key? key}) : super(key: key);

  @override
  State<ProfileCompleteScreen> createState() => _ProfileCompleteScreenState();
}

class _ProfileCompleteScreenState extends State<ProfileCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: headerPadding,
                child: Column(
                  children: const [
                    ProfileHeader(
                      title: "Profile",
                    )
                  ],
                ),
              ),
              Padding(
                padding: mainBodyPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileInfoRow(
                      name: "Rida Zehra",
                      subtext: "Show my Profile as User.",
                      profilePic: Image.asset(
                        "assets/images/sample_profile_pic.png",
                        scale: 2.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: Get.height * 0.02),
                      child: Text(
                        "0 Followers",
                        style: TextStyle(
                          fontSize: 18,
                          color: ThemeColors().onBoardingHeadingColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.4),
                      child: Center(
                        child: Text(
                          "Verify your Profile with a Selfie.",
                          style: TextStyle(
                            color: ThemeColors().soulColor,
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.01),
                      child: Center(
                        child: Text(
                          "Complete Match My Perfect Soul ",
                          style: TextStyle(
                            color: ThemeColors().soulColor,
                            fontWeight: FontWeight.w100,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.02),
                      child: CustomButton(
                        name: "Complete Profile",
                        onClick: nextScreen,
                        color: ThemeColors().buttonColor,
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

  void nextScreen() async {
    /*if (_formKey.currentState!.validate()) {*/
    Get.toNamed(RoutesClass.selfieCheckScreen);
    /*}*/
  }
}
