import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class PrimaryBtn extends StatelessWidget {
  final String title;
  final void Function()? ontapFunc;
  const PrimaryBtn({super.key, required this.title, required this.ontapFunc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontapFunc,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: Get.height * 0.015),
          decoration: BoxDecoration(
            color: CustomTheme().primaryBTN,
            borderRadius: BorderRadius.circular(Get.width * 0.05),
          ),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ));
  }
}
