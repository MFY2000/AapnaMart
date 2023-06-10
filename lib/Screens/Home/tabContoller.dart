import 'package:apna_mart/Components/Card/card2.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class tabController extends StatefulWidget {
  final List<dynamic> products;
  const tabController({super.key, required this.products});

  @override
  State<tabController> createState() => _tabControllerState();
}

class _tabControllerState extends State<tabController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.products.length,
        itemBuilder: (context, index) => ProductCard2(
              isInCart: foundId_Cart(widget.products[index]["id"], index),
              data: widget.products[index],
              onChange: (counter) => onChnage(index, counter),
            ));
  }

  // ignore: non_constant_identifier_names
  foundId_Cart(id, index) {
    for (var element in cartList) {
      if(element["id"] == id){
        widget.products[index]["count"] = element["count"];
        return true;
      }
    }
    return false;
  }

  onChnage(i, counter) {
    if (counter) {
      if (cartList[i]["quantity"] == cartList[i]["count"] + 1) {
        Get.snackbar(
            "Error", "You can't add more than ${cartList[i]["quantity"]} items");
      } else {
        cartList[i]["count"] = cartList[i]["count"] + 1;
      }
    } else {
      if (cartList[i]["count"] == 1) {
        Get.snackbar("Error", "You can't remove less than 1 item");
      } else {
        cartList[i]["count"] = cartList[i]["count"] - 1;
      }
    }
    setState(() {});
  }
}
