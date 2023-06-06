import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class PrimaryBtn extends StatelessWidget {
  final bool isDisable;
  final bool isLoading;
  final String title;
  final void Function()? ontapFunc;
  const PrimaryBtn(
      {super.key,
      required this.title,
      required this.ontapFunc,
      this.isDisable = false,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Opacity(
            opacity: isDisable ? 0.5 : 1,
            child: GestureDetector(
                onTap: isDisable ? () {} : ontapFunc,
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
                )),
          );
  }
}
