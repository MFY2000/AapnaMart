import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:get/get.dart';

import '../../Utils/CustomTheme.dart';
import '../../Utils/ThemeColors.dart';

class CustomDatePicker extends StatelessWidget {
  final String label;

  CustomDatePicker({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          primary: ThemeColors().buttonColor,
        ),
      ),
      child: DateTimePicker(
          style: TextStyle(
            color: ThemeColors().onBoardingHeadingColor,
            fontSize: 18,
            fontFamily: "Urbanist",
          ),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ThemeColors().enabledBorderColor,
              ),
            ),
            errorStyle: TextStyle(
              height: -1,
              fontFamily: "Urbanist",
              fontSize: 15,
              color: CustomTheme().errorColor,
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: CustomTheme().errorColor,
                width: CustomTheme().errorBorderWidth,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: ThemeColors().labelTextColor,
              ),
            ),
            isDense: true,
            contentPadding: EdgeInsets.all(CustomTheme().paddingInput),
            hintText: label,
            hintStyle: TextStyle(
              color: ThemeColors().buttonColor,
              fontSize: 18,
            ),
          ),
          type: DateTimePickerType.date,
          dateMask: 'dd-MM-yyyy',
          firstDate: DateTime(2005),
          lastDate: DateTime(2100),
          onChanged: (value) {},
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please Enter Date';
            }
            return null;
          },
          onSaved: (val) => null),
    );
  }
}
