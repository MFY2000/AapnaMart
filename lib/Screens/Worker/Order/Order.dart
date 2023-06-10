import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/Button/Secondarybtn.dart';
import 'package:apna_mart/Components/Card/card.dart';
import 'package:apna_mart/Components/Card/card2.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:apna_mart/Screens/Home/tabContoller.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isLoading = true;
  List<dynamic> orderOnStore = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    getProduct();
  }

  getProduct() async {
    var response = await api.get(api.order);

    if (response != null) {
      if (response["orders"].length != 0) {
        setState(() {
          orderOnStore = response["orders"];
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
                    "Mart Product",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  isLoading
                      ? Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: orderOnStore.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: CustomTheme().backgroundColor2,
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: Get.height * .01),
                            padding: EdgeInsets.symmetric(
                                horizontal: Get.width * .02,
                                vertical: Get.height * .01),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: getDeatils_Style(
                                      "Order Id", orderOnStore[index]["id"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: getDeatils_Style("Customer Id",
                                      orderOnStore[index]["uid"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: getDeatils_Style("Delivery",
                                      orderOnStore[index]["isOrderDelivery"]),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: getDeatils_Style("Amount", "")),
                                SizedBox(
                                  height: Get.height * .02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: Get.width * .25,
                                      child: PrimaryBtn(
                                        title: "Details",
                                        ontapFunc: () {},
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.width * .02,
                                    ),
                                    SizedBox(
                                        width: Get.width * .25,
                                        child: PrimaryBtn(
                                          color: Color(0XFF48BB78),
                                          title: "Ready",
                                          ontapFunc: () {},
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                ],
              )),
        ),
        bottomNavigationBar: const CustombottomNavBar());
  }

  getDeatils_Style(heading, value) {
    return Row(children: [
      Text("$heading",
          style: TextStyle(
              color: CustomTheme().darkColor,
              fontSize: 14,
              fontWeight: FontWeight.bold)),
      SizedBox(
        width: Get.width * .02,
      ),
      Text("$value",
          style: TextStyle(
              color: CustomTheme().darkColor,
              fontSize: 14,
              fontWeight: FontWeight.w100)),
    ]);
  }
}
