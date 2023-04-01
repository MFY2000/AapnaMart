import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Buttons/SubscriptionButton.dart';

class SubscriptionCard extends StatelessWidget {
  final String type;
  final String details;
  final String price;
  final AssetImage image;
  final VoidCallback onClick;

  const SubscriptionCard({
    super.key,
    required this.type,
    required this.details,
    required this.price,
    required this.image,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
      child: GestureDetector(
        onTap: (){
          onClick();
        },
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: Get.height * 0.02, horizontal: Get.width * 0.04,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  details,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "$price PKR",
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SubscriptionButton(
                            onClick: onClick,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
