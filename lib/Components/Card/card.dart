import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class productCard extends StatelessWidget {
  final dynamic data;
  const productCard({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    //print(data);
    return GestureDetector(
      onTap: () {
        selectedProduct = data;
        Get.toNamed("/productDetails");
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width * .005),
          child: Container(
            width: Get.width * .65,
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
                    padding: EdgeInsets.only(right: Get.width * .025),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage(api.File_URL + data["image"]),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data["name"],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              data["subTitle"],
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                            ),
                          ],
                        ),
                        Text(
                          "Rs. ${data["price"]}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
