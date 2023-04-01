import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class CustomDropDown2 extends StatelessWidget {
  final List<String> productItems;
  String product;
  final onChanged;
  final String label;

  CustomDropDown2({
    super.key,
    required this.productItems,
    required this.onChanged,
    required this.label,
    this.product = "",
  });

  @override
  Widget build(BuildContext context) {
    product = product != "" && product.isNotEmpty ? product : productItems[0];
    return SizedBox(
      width: Get.width * 0.48,
      child: DropdownButtonFormField(
        alignment: AlignmentDirectional.center,
        value: product,
        onChanged: onChanged,
        style: TextStyle(
          color: ThemeColors().onBoardingHeadingColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          suffixIconConstraints: const BoxConstraints(
              minWidth: 24, minHeight: 15, maxHeight: 15),
          isDense: true,
          hintStyle: TextStyle(
            color: ThemeColors().buttonColor,
            fontSize: 18,
          ),
          hintText: label,
          contentPadding: EdgeInsets.symmetric(vertical: Get.height * 0.01, horizontal: Get.width * 0.01),
        ),
        icon: const Icon(
          Icons.keyboard_arrow_down,
          size: 20,
        ),
        items: productItems.map((items) {
          return DropdownMenuItem(
            value: items,
            child: Row(
              children: <Widget>[
                Text(
                  items,
                  style: TextStyle(
                    color: ThemeColors().buttonColor,
                    fontSize: 18,
                    fontFamily: "Urbanist",
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
