import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class successFull extends StatelessWidget {
  const successFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Get.height * 0.2,
                  width: Get.width * 0.3,
                  child: Image.asset("./assets/images/logo.png"),
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Skip now ",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: CustomTheme().darkColor,
                        )
                      ],
                    ))
              ],
            ),
            Container(
              width: Get.width * 0.8,
              height: Get.height * 0.3,
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.04),
              child: Image.asset(
                "./assets/images/successfull.png",
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Get.width * .3, bottom: Get.width * .01),
              child: Text("Account Successfully, Create",
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            Text(
                "Wants, Some more Information for Verification, or Security, purpose, we hope that you will understand, otherwise the Order can’t be Procced.",
                style: Theme.of(context).textTheme.displaySmall),
            SizedBox(
              height: Get.height * .25,
            ),
            PrimaryBtn(
              title: "Procced",
              ontapFunc: () {
                Get.toNamed("/policy");
              },
            )
          ],
        ),
      ),
    );
  }
}
