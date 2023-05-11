import 'package:apna_mart/Components/Button/Secondarybtn.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * .05,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Get.height * .005, horizontal: Get.width * 0.025),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Get.width * 0.035),
                  color: CustomTheme().backgroundColor,
                ),
                height: Get.height * .075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: Get.width * .065,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Product Name"),
                        const Text("Product Price"),
                      ],
                    ),
                    SizedBox(
                      width: Get.width * .15,
                    ),
                    Container(
                      height: Get.height * .04,
                      child: secondaryBtn(title: "Location", ontapFunc: () {}),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Get.width * 0.035),
                  color: CustomTheme().backgroundColor,
                ),
                height: Get.height * .2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.amber,
                      width: Get.width * .3,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Product Name"),
                        const Text("Product Price"),
                        Container(
                          width: Get.width * 0.17,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Get.width * 0.02),
                            color: CustomTheme().primayColor,
                          ),
                          child: Row(children: [
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.add_circle_rounded,
                                    color: Colors.white)),
                            const Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "1",
                                  style: TextStyle(color: Colors.white),
                                )),
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.remove_circle,
                                    color: Colors.white))
                          ]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: Get.width * .025,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Get.height * .005,
                            horizontal: Get.width * 0.025),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                                backgroundColor: CustomTheme().highlight,
                                child: Icon(Icons.delete)),
                            Text("price",
                                style:
                                    Theme.of(context).textTheme.displayMedium),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(Get.width * 0.035),
                  color: CustomTheme().backgroundColor,
                ),
                child: Row(
                  children: [
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text("Order Id",
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                              Text("a5a5aa87",
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Order Id",
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                              Text("a5a5aa87",
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
