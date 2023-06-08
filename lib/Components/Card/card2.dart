import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard2 extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  
  const ProductCard2(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .65,
      height: Get.height * .075,
      padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
      margin: EdgeInsets.all(Get.width * .01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomTheme().backgroundColor2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(right: Get.width * .05),
              child: CircleAvatar(
                backgroundImage: NetworkImage(api.File_URL + image),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
