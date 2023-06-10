import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Screens/Profile/CustomRow.dart';
import 'package:apna_mart/Screens/Profile/ProfileInfo.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../Utils/Constants.dart';
import '../../Utils/Routes.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark, // status bar color
    ));

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: mainBodyPadding,
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.018,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: CustomTheme().fontsColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: mainBodyPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProfileInfoRow(
                        name: profileData["name"],
                        subtext: profileData["email"] +
                            " ( ${profileData["type"]} )",
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: Get.height * 0.02),
                        child: Text(
                          "${profileData['noOfOrders']} Orders",
                          style: TextStyle(
                            fontSize: 18,
                            color: CustomTheme().fontsColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomRow(
                        title: "Edit Profile",
                        icon: Icon(
                          Icons.edit,
                          color: CustomTheme().lightColor,
                          size: 18,
                        ),
                        borderColor: CustomTheme().primayColor,
                        containerColor: CustomTheme().primayColor,
                        onClick: () {}),
                    CustomRow(
                      title: "Help Center",
                      icon: Icon(
                        Icons.help_outline_outlined,
                        color: CustomTheme().lightColor,
                        size: 18,
                      ),
                      borderColor: CustomTheme().primayColor,
                      containerColor: CustomTheme().primayColor,
                      onClick: () {
                        // Get.toNamed(RoutesClass.helpCenterScreen);
                      },
                    ),
                    CustomRow(
                      title: "Become Income Generator",
                      icon: Icon(
                        Icons.lock,
                        color: CustomTheme().primaryBTN,
                        size: 18,
                      ),
                      borderColor: CustomTheme().primayColor,
                      containerColor: CustomTheme().lightColor,
                      onClick: () {
                        // showDialog(
                        //   context: context,
                        //   builder: (context) => const EarnDialogBox(),
                        // );
                      },
                    ),
                    CustomRow(
                      title: "Invite Friends",
                      icon: Icon(
                        Icons.share,
                        color: CustomTheme().lightColor,
                        size: 18,
                      ),
                      borderColor: CustomTheme().primayColor,
                      containerColor: CustomTheme().primayColor,
                      onClick: () async {
                        // Share.share('$text $url');
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: Get.height * 0.02,
                      ),
                      child: CustomRow(
                        title: "Log Out",
                        icon: Icon(
                          Icons.logout_outlined,
                          color: CustomTheme().lightColor,
                          size: 18,
                        ),
                        borderColor: CustomTheme().primayColor,
                        containerColor: CustomTheme().primayColor,
                        onClick: () {
                          storage.remove("user");
                          Get.offAndToNamed("/splash");
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: CustombottomNavBar(),
        ),
      ),
    );
  }
}
