import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Components/Rows/PolicyRow.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

import '../../Components/CheckBox/CheckBoxLabeled.dart';
import '../../Components/Headers/SubscriptionHeaderWithBackIcon.dart';
import '../../Utils/Routes.dart';

class PolicyScreen extends StatefulWidget {
  const PolicyScreen({Key? key}) : super(key: key);

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
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
                  ],
                ),
              ),
              Padding(
                padding: mainBodyPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.02),
                      child: Text(
                        "Our Policy",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.02),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: policy.length,
                        shrinkWrap: true,
                        itemExtent: 45,
                        itemBuilder: (context, index) {
                          return PolicyRow(
                            details: policy[index],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.08),
                      child: const CheckBoxLabeled(
                        label: "Yes, I have read & agree to SoulMilun Policy.",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.02),
                      child: CustomButton(
                        name: "Continue",
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
      ),
    );
  }

  void nextScreen() async {
    Get.toNamed(RoutesClass.publicInfoScreen);
  }
}
