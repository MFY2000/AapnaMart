import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryDropDown extends StatelessWidget {
  final List<String> productItems;
  String product;
  final Function(String) onChanged;
  final String label;

  PrimaryDropDown({
    super.key,
    required this.productItems,
    required this.onChanged,
    required this.label,
    this.product = "",
  });

  @override
  Widget build(BuildContext context) {
    product = product != "" && product.isNotEmpty ? product : productItems[0];
    return Container(
      padding: EdgeInsets.only(top: Get.height * 0.02),
      height: Get.height * 0.1,
      alignment: Alignment.center,
      child: DropdownButtonFormField(
        value: product,
        onChanged: (value) => {
          if (value != null && value.isNotEmpty)
            {
              // product = value;
              onChanged(value)
            }
        },
        style: Theme.of(context).textTheme.displayMedium,
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
              color: CustomTheme().fontsColor,
            ),
          ),
          errorStyle: TextStyle(
            height: 0,
            color: CustomTheme().highlight,
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomTheme().highlight,
              width: CustomTheme().errorBorderWidth,
            ),
          ),
          suffixIconConstraints:
              const BoxConstraints(minWidth: 24, minHeight: 15, maxHeight: 15),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: CustomTheme().darkColor,
            ),
          ),
          isDense: true,
          // contentPadding: EdgeInsets.all(0),
          hintStyle: Theme.of(context).textTheme.displaySmall,
          hintText: label,
        ),
        icon: Icon(Icons.arrow_drop_down),
        items: productItems.map((items) {
          return DropdownMenuItem(
            value: items,
            child: Row(
              children: <Widget>[
                Text(
                  items,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
