import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/Card/addtoCartCard.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class addToCart extends StatefulWidget {
  const addToCart({super.key});

  @override
  State<addToCart> createState() => _addToCartState();
}

class _addToCartState extends State<addToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: Get.height * 0.7,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top Marts",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return addtoCartCard(data: {
                            "name": "Product Name",
                            "price": "Rs. 500",
                            "quantity": "2",
                            "image": "1.jpg"
                          });
                        },
                        itemCount: 8,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: Get.width * .05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total: ",
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                            Text("Rs. 1000",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: Get.width * 0.3,
                    child: PrimaryBtn(
                      color: CustomTheme().primaryBTN,
                      title: "Cancel",
                      ontapFunc: () {},
                    )),
                SizedBox(
                    width: Get.width * 0.55,
                    child: PrimaryBtn(
                      title: "Add to Cart (1000)",
                      ontapFunc: () {},
                    )),
              ],
            )
          ]),
        ),
        bottomNavigationBar: const CustombottomNavBar());
  }
}
