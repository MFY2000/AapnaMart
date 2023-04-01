import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/AlertBox/SubscriptionAlertBox.dart';
import 'package:apna_mart/Components/Card/SubscriptionCard.dart';
import 'package:apna_mart/Components/Headers/SubscriptionHeaderWithBackIcon.dart';
import 'package:apna_mart/Utils/Constants.dart';

import '../../Utils/ThemeColors.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
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
                padding: subscriptionBodyPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height * 0.018,
                    ),
                    const SubscriptionHeader(
                      text1: "SOUL",
                      text2: " MILUN",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: Get.width * 0.02,
                        right: Get.width * 0.02,
                        top: Get.height * 0.02,
                      ),
                      child: Text(
                        "Subscription Plans",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: ThemeColors().buttonColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: mainBodyPadding2,
                child: Column(
                  children: [
                    //First Design
                    SubscriptionCard(
                      type: "Basic",
                      details: "25 messages in one week",
                      price: "1250",
                      image: const AssetImage(
                          "assets/images/SubscriptionImage/BasicPackageMaxQuality.png"),
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SubscriptionAlertBox(
                              type: "Basic",
                              image1: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image2: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image3: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image4: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image5: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image6: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              detail1: "25 Messages in one Month",
                              price: "1250",
                            );
                          },
                        );
                      },
                    ),
                    SubscriptionCard(
                      type: "Silver",
                      details: "50 messages in one week",
                      price: "1750",
                      image: const AssetImage(
                          "assets/images/SubscriptionImage/SilverPackageMaxQuality.png"),
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SubscriptionAlertBox(
                              type: "Silver",
                              image1: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image2: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image3: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image4: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image5: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image6: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              detail1: "50 Messages in one Month",
                              price: "1750",
                            );
                          },
                        );
                      },
                    ),
                    SubscriptionCard(
                      type: "Gold",
                      details: "75 messages in one week",
                      price: "2000",
                      image: const AssetImage(
                          "assets/images/SubscriptionImage/GoldPackageMaxQuality.png"),
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SubscriptionAlertBox(
                              type: "Gold",
                              image1: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image2: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image3: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image4: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image5: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image6: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              detail1: "75 Messages in one Month",
                              price: "2000",
                            );
                          },
                        );
                      },
                    ),
                    SubscriptionCard(
                      type: "Platinum",
                      details: "100 messages in one week",
                      price: "3000",
                      image: const AssetImage(
                          "assets/images/SubscriptionImage/PlatinumPackageMaxQuality.png"),
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SubscriptionAlertBox(
                              type: "Platinum",
                              image1: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image2: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image3: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image4: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image5: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image6: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              detail1: "100 Messages in one Month",
                              price: "3000",
                            );
                          },
                        );
                      },
                    ),
                    //Second Design
                    SubscriptionCard(
                      type: "Basic",
                      details: "25 messages in one week",
                      price: "1250",
                      image: const AssetImage(
                          "assets/images/SubscriptionImage/BasicPackageBestQuality2.png"),
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SubscriptionAlertBox(
                              type: "Basic",
                              image1: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image2: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image3: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image4: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image5: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image6: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              detail1: "25 Messages in one Month",
                              price: "1250",
                            );
                          },
                        );
                      },
                    ),
                    SubscriptionCard(
                      type: "Silver",
                      details: "50 messages in one week",
                      price: "1750",
                      image: const AssetImage(
                          "assets/images/SubscriptionImage/SilverPackageBestQuality2.png"),
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SubscriptionAlertBox(
                              type: "Silver",
                              image1: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image2: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image3: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image4: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image5: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image6: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              detail1: "50 Messages in one Month",
                              price: "1750",
                            );
                          },
                        );
                      },
                    ),
                    SubscriptionCard(
                      type: "Gold",
                      details: "75 messages in one week",
                      price: "2000",
                      image: const AssetImage(
                          "assets/images/SubscriptionImage/GoldPackageBestQuality2.png"),
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SubscriptionAlertBox(
                              type: "Gold",
                              image1: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image2: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image3: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image4: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image5: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image6: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              detail1: "75 Messages in one Month",
                              price: "2000",
                            );
                          },
                        );
                      },
                    ),
                    SubscriptionCard(
                      type: "Platinum",
                      details: "100 messages in one week",
                      price: "3000",
                      image: const AssetImage(
                          "assets/images/SubscriptionImage/PlatinumPackageBestQuality2.png"),
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SubscriptionAlertBox(
                              type: "Platinum",
                              image1: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image2: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image3: Image.asset(
                                "assets/icons/green_tick_icon.png",
                                scale: 2,
                              ),
                              image4: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image5: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              image6: Image.asset(
                                "assets/icons/red_close_icon.png",
                                scale: 2,
                              ),
                              detail1: "100 Messages in one Month",
                              price: "3000",
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
