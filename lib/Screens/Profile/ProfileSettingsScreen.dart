import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Components/Rows/CustomRow.dart';

import '../../Components/Headers/ProfileHeader.dart';
import '../../Components/NavigationBar/CustomBottomNavigationBar.dart';
import '../../Components/Rows/ProfileInfoRow.dart';
import '../../Utils/Constants.dart';
import '../../Utils/Routes.dart';
import '../../Utils/ThemeColors.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
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
                      title: "Settings",
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
                    Column(
                      children: [
                        CustomRow(
                            title: "Edit Profile",
                            icon: Icon(
                              Icons.edit,
                              color: ThemeColors().buttonColor,
                              size: 18,
                            ),
                            borderColor: ThemeColors().roundedContainerColor,
                            containerColor: ThemeColors().roundedContainerColor,
                            onClick: () {}),
                        CustomRow(
                            title: "Match My Perfect Soul",
                            icon: Icon(
                              Icons.favorite,
                              color: ThemeColors().buttonColor,
                              size: 18,
                            ),
                            borderColor: ThemeColors().roundedContainerColor,
                            containerColor: ThemeColors().roundedContainerColor,
                            onClick: () {}),
                        CustomRow(
                            title: "Help Center",
                            icon: Icon(
                              Icons.help_outline_outlined,
                              color: ThemeColors().buttonColor,
                              size: 18,
                            ),
                            borderColor: ThemeColors().roundedContainerColor,
                            containerColor: ThemeColors().roundedContainerColor,
                            onClick: () {}),
                        CustomRow(
                            title: "Become Income Generator",
                            icon: Icon(
                              Icons.lock,
                              color: ThemeColors().buttonColor,
                              size: 18,
                            ),
                            borderColor: ThemeColors().soulColor,
                            containerColor: ThemeColors().scaffoldColor,
                            onClick: () {}),
                        CustomRow(
                            title: "Invite Friends",
                            icon: Icon(
                              Icons.share,
                              color: ThemeColors().buttonColor,
                              size: 18,
                            ),
                            borderColor: ThemeColors().roundedContainerColor,
                            containerColor: ThemeColors().roundedContainerColor,
                            onClick: () {}),
                      ],
                    ),
                    Center(
                      child: ClipOval(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                            border: Border.all(
                              color: ThemeColors().roundedContainerColor,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Get.height * 0.03,
                                horizontal: Get.width * 0.03),
                            child: Image.asset(
                              "assets/icons/chat_icon_2.png",
                              fit: BoxFit.fill,
                              scale: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Get matches Faster",
                        style: TextStyle(
                          fontSize: 15,
                          color: ThemeColors().buttonColor,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Boost your profile once in a month",
                        style: TextStyle(
                          fontSize: 14,
                          color: ThemeColors().buttonColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: Get.height * 0.02),
                      child: CustomButton(
                        name: "Subscribe Now",
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
    Get.toNamed(RoutesClass.subscriptionScreen);
    /*}*/
  }
}
