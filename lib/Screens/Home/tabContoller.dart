import 'package:apna_mart/Components/Card/card2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class tabController extends StatelessWidget {
  final List<dynamic> products;
  const tabController({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) => ProductCard2(
            title: products[index]["name"],
            subTitle: products[index]["description"],
            image: products[index]["image"]));
  }
}
