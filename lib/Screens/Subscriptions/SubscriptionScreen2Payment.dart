import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Headers/HeaderWithBackIcon.dart';
import 'package:apna_mart/Utils/Constants.dart';

import '../../Components/Buttons/CustomButton.dart';
import '../../Components/RadioButtons/CustomRadioButtons2.dart';
import '../../Utils/Routes.dart';
import '../../Utils/ThemeColors.dart';

class SubscriptionScreen2Payment extends StatefulWidget {
  const SubscriptionScreen2Payment({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen2Payment> createState() =>
      _SubscriptionScreen2PaymentState();
}

class _SubscriptionScreen2PaymentState
    extends State<SubscriptionScreen2Payment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: headerPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWithBackIcon(
                  title: "Payment",
                  subtitle: "Select Payment Method.",
                ),
                Padding(
                  padding: mainBodyPadding,
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      const CustomRadioButtons2(),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.02),
                        child: Divider(
                          color: ThemeColors().containerOutlineColor,
                          thickness: Get.height * 0.0005,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(15.0),
                          onTap: toAddCardScreen,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: Get.height * 0.02,
                                horizontal: Get.width * 0.08),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.add_card_outlined,
                                  size: 20,
                                  color: ThemeColors().iconColor,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Get.width * 0.02),
                                  child: Text(
                                    "Add Card",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.3),
                        child: CustomButton(
                          name: "Confirm Payment",
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
      ),
    );
  }

  void toAddCardScreen() async {
    Get.toNamed(RoutesClass.addCardScreen);
  }

  void nextScreen() async {
    /*if (_formKey.currentState!.validate()) {*/
    Get.toNamed(RoutesClass.congratsScreen);
    /*}*/
  }

/*  void nextScreen() async {
    if (_formKey.currentState!.validate()) {
      Get.toNamed(RoutesClass.newPasswordScreen);
    }
  }*/
}
