import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/Routes.dart';
import '../../Utils/ThemeColors.dart';
import '../Buttons/CustomButton.dart';

class SubscriptionAlertBox extends StatelessWidget {

  final String type;
  final Image image1;
  final Image image2;
  final Image image3;
  final Image image4;
  final Image image5;
  final Image image6;
  final String detail1;
  final String price;

  const SubscriptionAlertBox({
    super.key,
    required this.type,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.image6,
    required this.detail1,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05,),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                type,
                style: TextStyle(
                  fontSize: CustomTheme().onBoardingHeadingFontSize,
                  color: ThemeColors().buttonColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                child: Text.rich(
                  TextSpan(
                    text: price,
                    style: TextStyle(
                      color: ThemeColors().soulColor,
                      fontSize: CustomTheme().subDetails,
                      fontWeight: FontWeight.bold,
                    ),
                    children:[
                      TextSpan(
                        text: " PKR",
                        style: TextStyle(
                          color: ThemeColors().buttonColor,
                          fontSize: CustomTheme().subDetails,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListBody(
                children:[
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.005),
                    leading: image1,
                    title: Text(
                      detail1,
                      style: TextStyle(
                        fontSize: 16,
                        color: ThemeColors().buttonColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.000005),
                    leading: image2,
                    title: Text(
                      "5 Super Likes a Day",
                      style: TextStyle(
                        fontSize: 16,
                        color: ThemeColors().buttonColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.000005),
                    leading: image3,
                    title: Text(
                      "Unlimited Rewinds",
                      style: TextStyle(
                        fontSize: 16,
                        color: ThemeColors().buttonColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.000005),
                    leading: image4,
                    title: Text(
                      "Remove Restrictions & Ads",
                      style: TextStyle(
                        fontSize: 16,
                        color: ThemeColors().buttonColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.000005),
                    leading: image5,
                    title: Text(
                      "Unlimited Swiping & Likes",
                      style: TextStyle(
                        fontSize: 16,
                        color: ThemeColors().buttonColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: Get.width * 0.000005),
                    leading: image6,
                    title: Text(
                      "5 Super Likes a Day",
                      style: TextStyle(
                        fontSize: 16,
                        color: ThemeColors().buttonColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: Get.height * 0.04,),
                child: CustomButton(
                  name: "Proceed",
                  onClick: nextScreen,
                  color: CustomTheme().successColor,
                ),
              ),
              CustomButton(
                name: "Cancel",
                onClick: (){
                  Get.back();
                },
                color: CustomTheme().errorColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
  void nextScreen() async {
      Get.toNamed(RoutesClass.subscriptionScreen2Payment);
  }
}
