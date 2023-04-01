import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class ProfileLayoutCard extends StatelessWidget {
  final String name;
  final String age;
  final String detail1;
  final String detail2;


  const ProfileLayoutCard({
    super.key,
    required this.name,
    required this.age,
    required this.detail1,
    required this.detail2,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: ThemeColors().containerOutlineColor,
        ),
        image: const DecorationImage(
          image: AssetImage("assets/images/profile_layout_image1x.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.01, horizontal: Get.width * 0.02),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/icons/swipe_icon_profile_layout.png",
                  scale: 1.8,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.5,left: Get.width * 0.04, right: Get.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: name,
                          style: TextStyle(
                            color: ThemeColors().buttonColor,
                            fontSize: CustomTheme().subDetails,
                            fontWeight: FontWeight.bold,
                          ),
                          children:[
                            TextSpan(
                              text: ", ",
                              style: TextStyle(
                                color: ThemeColors().buttonColor,
                                fontSize: CustomTheme().onBoardingHeadingFontSize,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: age,
                              style: TextStyle(
                                color: ThemeColors().buttonColor,
                                fontSize: CustomTheme().onBoardingHeadingFontSize,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                        /*  color: ThemeColors().roundedContainerColor,*/
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ThemeColors().roundedContainerColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: Get.height * 0.005,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: ThemeColors().buttonColor,
                                size: 18,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: Get.width*0.01,),
                                child: Text(
                                  "2.3 km",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: ThemeColors().buttonColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Karachi, Pakistan",
                    style: TextStyle(
                      color: ThemeColors().buttonColor,
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Get.height * 0.01,),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02,vertical: Get.height * 0.008,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ThemeColors().roundedContainerColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                detail1,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ThemeColors().buttonColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.02,vertical: Get.height * 0.008,),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ThemeColors().roundedContainerColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  detail2,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ThemeColors().buttonColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Get.height * 0.02,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            "assets/icons/heart_icon_profile_page.png",
                            scale: 1.5,
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            "assets/icons/chat_icon_profile_page.png",
                            scale: 1.7,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
