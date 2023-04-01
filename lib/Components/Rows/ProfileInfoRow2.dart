import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/ThemeColors.dart';
import '../AlertBox/DiscountDialogBox.dart';

class ProfileInfoRow2 extends StatelessWidget {
  const ProfileInfoRow2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipOval(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                    color: ThemeColors().profileBorderColor,
                  ),
                ),
                child: Image.asset(
                  "assets/images/sample_profile_pic.png",
                  scale: 2.8,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.04,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rida Zehra',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: ThemeColors().onBoardingHeadingColor,
                  ),
                ),
                Text(
                  "Karachi, Pakistan",
                  style: TextStyle(
                    fontSize: 12,
                    color: ThemeColors().buttonColor,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: Get.height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => const DiscountDialogBox(),
                  );
                },
                child: Image.asset(
                  "assets/icons/discount_icon.png",
                  scale: 1.6,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: Get.width * 0.06,
              ),
              Image.asset(
                "assets/icons/filter_icon.png",
                scale: 1.6,
                fit: BoxFit.cover,
              ),
            ],
          ),
        )
      ],
    );
  }
}
