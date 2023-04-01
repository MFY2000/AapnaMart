import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class CustomDropDown1 extends StatelessWidget {
  final List<String> productItems;
  String product;
  final  onChanged;
  final String label;

  CustomDropDown1({
    super.key,
    required this.productItems,
    required this.onChanged,
    required this.label,
    this.product = "",
  });

  @override
  Widget build(BuildContext context) {
    product = product != "" && product.isNotEmpty ? product : productItems[0];
    return DropdownButtonFormField(
      value: product,
      onChanged: onChanged,
      style: TextStyle(
        color: ThemeColors().onBoardingHeadingColor,
        fontSize: 18,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) {
          return 'Please select $label';
        }
        return null;
      },
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ThemeColors().enabledBorderColor,
          ),
        ),
        errorStyle: TextStyle(
              height: -1,
              color: CustomTheme().errorColor,
            ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: CustomTheme().errorColor,
            width: CustomTheme().errorBorderWidth,
          ),
        ),
        suffixIconConstraints: const BoxConstraints(
            minWidth: 24, minHeight: 15, maxHeight: 15),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: ThemeColors().labelTextColor,
          ),
        ),
        isDense: true,
        contentPadding: EdgeInsets.all(CustomTheme().paddingInput),
        hintStyle: TextStyle(
          color: ThemeColors().buttonColor,
          fontSize: 18,
        ),
        hintText: label,
      ),
      icon: Image.asset(
        "assets/icons/dropdown_icon.png",
        height: 10,
        width: 10,
        color: ThemeColors().buttonColor,
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
    );
  }
}
