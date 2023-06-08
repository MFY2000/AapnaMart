import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/Button/counter.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class productScreen extends StatefulWidget {
  const productScreen({super.key});

  @override
  State<productScreen> createState() => _productScreenState();
}

class _productScreenState extends State<productScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width * .85,
                    height: Get.height * .4,
                    child:
                        Image.network(api.File_URL + selectedProduct["image"]),
                  ),
                  Text(
                    selectedProduct["name"],
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rs. ${selectedProduct["price"]}",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      counter(
                          count: 1,
                          add: () {},
                          remove: () {},
                          color: CustomTheme().backgroundColor),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  Text(
                    "Description",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Get.height * .01),
                    child: Text(
                      selectedProduct["description"],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  Text(
                    "Tags",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: Get.height * .01),
                    child: GridView.count(
                        crossAxisCount: 4,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 1.9,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          selectedProduct["tags"].length,
                          (index) => Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: CustomTheme().backgroundColor2,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(
                                vertical: Get.height * .01),
                            child: Text(
                              selectedProduct["tags"][index],
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: Get.height * .05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: Get.width * 0.3,
                          child: PrimaryBtn(
                            color: CustomTheme().primaryBTN,
                            title: "Buy now",
                            ontapFunc: () {},
                          )),
                      SizedBox(
                          width: Get.width * 0.55,
                          child: PrimaryBtn(
                            title: "Add to Cart",
                            ontapFunc: () {},
                          )),
                    ],
                  )
                ],
              )),
        ),
        bottomNavigationBar: const CustombottomNavBar());
  }
}
