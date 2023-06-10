import 'dart:convert';

import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/Card/CartCard.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:apna_mart/Utils/Constants.dart';
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
  num total = 0;
  String orderid = "";
  @override
  Widget build(BuildContext context) {
    getTotal();
    return Scaffold(
        appBar: CustomAppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
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
                          return CartCard(
                              data: cartList[index],
                              index: index,
                              onChange: getTotal,
                              removeItem: () => removeItem(index));
                        },
                        itemCount: cartList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                      cartList.isEmpty
                          ? Center(
                              child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Get.width * .05),
                              child: const Text("No items in cart"),
                            ))
                          : Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: Get.width * .05),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total: ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge),
                                  Text("Rs. $total",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                ],
                              ),
                            ),
                    ]),
              ),
            ),
            cartList.isNotEmpty
                ? Row(
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
                            title: "Checkout ($total)",
                            ontapFunc: checkout,
                          )),
                    ],
                  )
                : Container()
          ]),
        ),
        bottomNavigationBar: const CustombottomNavBar());
  }

  removeItem(int index) {
    setState(() {
      cartList.removeAt(index);
    });
    getTotal();
  }

  void getTotal() {
    total = 0;
    for (var i = 0; i < cartList.length; i++) {
      setState(() {
        total += (cartList[i]["price"] * cartList[i]["count"]);
      });
    }
  }

  void checkout() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Alert"),
            content: const Text("Are you sure you want to Order?"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")),
              TextButton(onPressed: orderRecord, child: const Text("Order")),
            ],
          );
        });
  }

  orderPopoup() async {
    var style = TextStyle(
        color: Colors.grey[600], fontSize: 12, fontWeight: FontWeight.w300);

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              children: [
                orderid != ""
                    ? Container(
                        width: Get.width * 0.6,
                        margin:
                            EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text("Apna Mart",
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                            Text("karachi, Pakistan", style: style),
                            Text(orderid, style: style),
                            Text("Order ID: 123456", style: style),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: Get.width * 0.3,
                                    child: Text("item")),
                                Text("Qty"),
                                Text("Price"),
                                Text("Total"),
                              ],
                            ),
                            Divider(),
                            ListView.builder(
                              itemBuilder: (context, index) {
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        width: Get.width * 0.3,
                                        child: Text(
                                          cartList[index]["name"],
                                          style: style,
                                        )),
                                    Text(
                                      cartList[index]["count"].toString(),
                                      style: style,
                                    ),
                                    Text(
                                      cartList[index]["price"].toString(),
                                      style: style,
                                    ),
                                    Text(
                                      (cartList[index]["price"] *
                                              cartList[index]["count"])
                                          .toString(),
                                      style: style,
                                    ),
                                  ],
                                );
                              },
                              itemCount: cartList.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                            ),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  "$total",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Text(
                              "Thanks for Shoping, Have a nice day",
                              style: style,
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: Get.width * .4,
                                  child: PrimaryBtn(
                                      ontapFunc: () {}, title: "Share"),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const CircleAvatar(
                                    child: Icon(Icons.download),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    : Center(child: CircularProgressIndicator())
              ]);
        });

    // Get.back();
  }

  void orderRecord() async {
    Map<String, dynamic> obj = {"uid": profileData["id"], "products": {}};

    for (var i = 0; i < cartList.length; i++) {
      obj["products"][i.toString()] = {
        "productId": cartList[i]["id"],
        "quanatity": cartList[i]["count"]
      };
    }
    obj["products"] = jsonEncode(obj["products"]);
    var response = await api.post(api.order, obj);
    print(response);

    if (response != null) {
      setState(() {
        orderid = response["order"]["id"];
      });
    }

    orderPopoup();
  }
}
