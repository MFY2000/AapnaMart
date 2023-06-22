import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class PolicyScreen extends StatelessWidget {
  late List<String> policy = [
    "Only respectable and ethical images are permissible",
    "Foul language is prohibited  ",
    "Use/misuse this app for any illegal purposes is prohibited ",
    "Soul Milun will not be accountable for any personal",
    "or financial damages.",
    "Personal products/advertisements are prohibited.",
    "Subscriptions are non refundable",
    "Subscription are auto renewed if not cancelled timely"
  ];
  PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("./assets/images/logo.png"),
            Text(
              "Our Policy",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: policy.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              radius: Get.height * .005,
                              backgroundColor: CustomTheme().primayColor),
                          Container(
                              padding: EdgeInsets.only(
                                  left: Get.width * .05,
                                  bottom: Get.height * .01),
                              width: Get.width * .8,
                              child: Text(policy[index])),
                        ]),
                  );
                }),
            SizedBox(
              height: Get.height * .1,
            ),
            PrimaryBtn(
              title: "Back",
              ontapFunc: () => Get.back(),
            )
          ],
        ),
      ),
    );
  }
}
