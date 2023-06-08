import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class counter extends StatelessWidget {
  final int count;
  final Function add;
  final Function remove;
  final Color color;

  const counter(
      {super.key,
      required this.count,
      required this.add,
      required this.remove,
      this.color = const Color(0xFF188AEC)});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      height: Get.width * .075,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                  child: Icon(Icons.add, color: Colors.white, size: 10))),
          Text("1", style: Theme.of(context).textTheme.bodyMedium),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: CustomTheme().highlight,
                  child: Icon(Icons.remove, color: Colors.white, size: 10))),
        ],
      ),
    );
  }
}
