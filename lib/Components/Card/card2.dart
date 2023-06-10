import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/Button/counter.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard2 extends StatelessWidget {
  final dynamic data;
  final bool isInCart;
  final Function(bool) onChange;

  const ProductCard2(
      {super.key, this.data, required this.isInCart, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          selectedProduct = data;
          Get.toNamed("/productDetails");
        },
        child: Container(
          height: Get.height * .075,
          padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
          margin: EdgeInsets.all(Get.width * .01),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CustomTheme().backgroundColor2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: Get.width * .05),
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
                      Text(
                        data["subTitle"],
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "Rs. ${data["price"]}",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                  width: Get.width * .3,
                  height: Get.height * .04,
                  child: isInCart
                      ? counter(
                          count: data["count"], add: onChange, remove: onChange)
                      : ElevatedButton(
                          onPressed: addToCart,
                          child: Text(
                            "Add to Cart",
                            style: Theme.of(context).textTheme.bodySmall,
                          )))
            ],
          ),
        ));
  }

  addToCart() {
    data["count"] = 0;
    cartList.add(data);
    onChange(true);
  }
}
