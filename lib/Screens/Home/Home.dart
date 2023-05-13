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
      appBar: AppBar(
        toolbarHeight: Get.height * .1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading:
            Icon(Icons.person, color: CustomTheme().secondaryColor, size: 30),
        title: Center(
            child: Image.asset(
          "assets/images/logo.png",
          height: Get.height * .1,
        )),
        actions: [
          Icon(Icons.qr_code_scanner_rounded,
              color: CustomTheme().darkColor, size: 30),
          SizedBox(
            width: Get.width * .05,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * .01,
                ),
                Container(
                  height: Get.height * .215,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: CustomTheme().darkColor.withOpacity(0.75),
                          spreadRadius: 1,
                          blurRadius: 1)
                    ],
                    color: Theme.of(context).scaffoldBackgroundColor,
                    image: const DecorationImage(
                        image: AssetImage("assets/images/Card.png"),
                        fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width * .05, vertical: Get.height * .02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: Get.height * .0475),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "User name",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Visit Store",
                            style: TextStyle(color: Color(0XFFB0953B)),
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(Get.width * .4, Get.height * .05),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                Container(
                  height: Get.height * .075,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            width: Get.width * .65,
                            height: Get.height * .075,
                            padding: EdgeInsets.symmetric(
                                horizontal: Get.width * .05),
                            margin: EdgeInsets.all(Get.width * .01),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: CustomTheme().backgroundColor2,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(right: Get.width * .05),
                                    child: CircleAvatar()),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Product Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    Text(
                                      "Product Price",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                Text(
                  "Top Feature",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: .8,
                    shrinkWrap: true,
                    children: List.generate(8, (index) {
                      return Column(children: [
                        Placeholder(
                          color: Theme.of(context).primaryColor,
                          fallbackHeight: Get.height * .1,
                          fallbackWidth: Get.width * .1,
                        ),
                        Text("Feature $index")
                      ]);
                    })),
                SizedBox(
                  height: Get.height * .01,
                ),
                Text(
                  "Top Search Product",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
              ],
            )),
      ),
    );
  }
}
