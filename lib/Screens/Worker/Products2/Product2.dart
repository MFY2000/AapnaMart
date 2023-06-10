import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/Button/Secondarybtn.dart';
import 'package:apna_mart/Components/Card/card.dart';
import 'package:apna_mart/Components/Card/card2.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:apna_mart/Screens/Home/tabContoller.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product2Screen extends StatefulWidget {
  const Product2Screen({super.key});

  @override
  State<Product2Screen> createState() => _Product2ScreenState();
}

class _Product2ScreenState extends State<Product2Screen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    getProduct();
  }

  getProduct() async {
    var response = await api.get(api.getProduct);
    if (response != null) {
      if (response["marts"].length != 0) {
        setState(() {
          productList = response["marts"];
          isLoading = false;
        });
      }
    }
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
        appBar: CustomAppBar2(),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  Text(
                    "Mart Products",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  isLoading
                      ? CircularProgressIndicator()
                      : GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 8.0,
                          childAspectRatio: .8,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(productList.length, (index) {
                            var element = productList[index];
                            return GestureDetector(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Image.network(api.File_URL + element["image"]),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: Get.height * .01),
                                    child: Text(element["name"],
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium),
                                  )
                              ]),
                            );
                          })),
                ],
              )),
        ),
        bottomNavigationBar: const CustombottomNavBar());
  }
}
