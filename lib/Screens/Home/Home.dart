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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
    print(profileData);
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
                      color: Theme.of(context).scaffoldBackgroundColor,
                      image: const DecorationImage(
                          image: AssetImage("./assets/images/Card.png"),
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
                              Text(
                                profileData[0]["name"],
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(Get.width * .4, Get.height * .05),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text(
                              "Visit Store",
                              style: TextStyle(color: Color(0XFFB0953B)),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  SizedBox(
                      height: Get.height * .09,
                      child: isLoading
                          ? CircularProgressIndicator()
                          : ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: productList.length,
                              itemBuilder: (context, index) => productCard(
                                title: productList[index]["name"],
                                subTitle: productList[index]["description"],
                                image: productList[index]["image"],
                              ),
                            )),
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
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(featureGrid.length, (index) {
                        var element = featureGrid[index];
                        return Column(children: [
                          Image(
                              image: AssetImage(
                                  "assets/images/" + element["image"])),
                          Text(element["name"])
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
                  tabController(products: productList),
                ],
              )),
        ),
        bottomNavigationBar: const CustombottomNavBar());
  }
}
