import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/Button/Secondarybtn.dart';
import 'package:apna_mart/Components/Card/card.dart';
import 'package:apna_mart/Components/Card/card2.dart';
import 'package:apna_mart/Components/Searchbar.dart/SearchBar.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:apna_mart/Screens/Home/tabContoller.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home2Screen extends StatefulWidget {
  const Home2Screen({super.key});

  @override
  State<Home2Screen> createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen>
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
                  Text(profileData["name"],
                      style: Theme.of(context).textTheme.titleMedium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total: ",
                          style: Theme.of(context).textTheme.headlineLarge),
                      Text("Rs. 1000",
                          style: Theme.of(context).textTheme.headlineMedium),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total: ",
                          style: Theme.of(context).textTheme.headlineLarge),
                      Text("Rs. 1000",
                          style: Theme.of(context).textTheme.headlineMedium),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  SearchBar(),
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
                  isLoading
                      ? CircularProgressIndicator()
                      : tabController(products: productList),
                ],
              )),
        ),
        bottomNavigationBar: const CustombottomNavBar());
  }
}
