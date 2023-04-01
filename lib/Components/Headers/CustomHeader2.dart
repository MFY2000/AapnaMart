import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/Constants.dart';
import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';
import '../DropDowns/CustomDropDown2.dart';

class CustomHeader2 extends StatefulWidget {

  const CustomHeader2({
    super.key,
  });

  @override
  State<CustomHeader2> createState() => _CustomHeader2State();
}

class _CustomHeader2State extends State<CustomHeader2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: previousScreen,
              child: Icon(
                Icons.arrow_back_ios_rounded,
                size: 20,
                color: ThemeColors().iconColor,
              ),
            ),
            Flexible(
              child: Center(
                child: CustomDropDown2(
                  product: profileFilters,
                  productItems: profileFiltersItems,
                  onChanged: dropDownValueProfileFilter,
                  label: "Select",
                ),
              ),
            ),
            Image.asset(
              "assets/icons/settings_icon.png",
              color: ThemeColors().buttonColor,
              scale: 2,
            ),
          ],
        ),
      ],
    );
  }

  void previousScreen() {
    Get.back();
  }

  void dropDownValueProfileFilter(String? value) {
    setState(() {
      profileFilters = (value) as String;
    });
  }
}
