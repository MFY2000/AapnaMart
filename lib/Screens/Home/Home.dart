import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< Updated upstream
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
=======
        appBar: CustomAppBar(),
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
                        horizontal: Get.width * .05,
                        vertical: Get.height * .02),
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
                              const Text(
                                "User name",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text(
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
                                      padding: EdgeInsets.only(
                                          right: Get.width * .05),
                                      child: const CircleAvatar()),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                  SizedBox(
                    height: Get.height * .075,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: productTab.length,
                        itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: Get.width * .04),
                              padding: EdgeInsets.symmetric(
                                  vertical: Get.height * .01,
                                  horizontal: Get.width * .01),
                              child: Text(productTab[index],
                                  style: index == selectedProductTab
                                      ? Theme.of(context).textTheme.bodyMedium
                                      : Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                            )),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
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
                                    child: const CircleAvatar()),
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
                ],
              )),
        ),
        bottomNavigationBar: const CustombottomNavBar());
>>>>>>> Stashed changes
  }
}
