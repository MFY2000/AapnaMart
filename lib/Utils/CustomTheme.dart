import 'dart:ui';
import 'package:flutter/material.dart';

import 'ThemeColors.dart';

class CustomTheme {
  // Colors
  final errorColor = Colors.red;
  final successColor = Colors.green;

  // Font Sizes
  final headingsize = 36.0;
  final mediumSize = 20.0;
  final smallSize = 14.0;

  final onBoardingHeadingFontSize = 24.0;
  final onBoardingSubHeadingFontSize = 18.0;
  final soulMilanSubscriptionFontSize = 20.0;
  final authHeadingsFontSize = 28.0;
  final socialTextSize = 16.0;
  final fontSize = 14.0;
  final fontSize1 = 15.0;
  final paddingInput = 15.0;
  final errorBorderWidth = 2.0;
  final subDetails = 32.0;

  ThemeData theme() {
    ThemeColors color = ThemeColors();
    return ThemeData(
      primaryColor: color.soulColor,
      secondaryHeaderColor: color.milanColor,
      scaffoldBackgroundColor: color.scaffoldColor,
      primaryColorDark: color.onBoardingHeadingColor,
      primaryColorLight: color.onBoardingSubTextColor,

      // Fonts
      fontFamily: "Urbanist",

      // Complete Theme
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    ThemeColors color = ThemeColors();
    return InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: color.enabledBorderColor,
        ),
      ),
      errorStyle: const TextStyle(height: 0),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: errorColor,
          width: errorBorderWidth,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: color.labelTextColor,
        ),
      ),
      contentPadding: EdgeInsets.all(paddingInput),
      hintStyle: TextStyle(
        color: color.hintTextColor,
      ),
      labelStyle: TextStyle(
        color: color.labelTextColor,
      ),
    );
  }

  TextTheme textTheme() {
    ThemeColors color = ThemeColors();
    return TextTheme(
      displayLarge: TextStyle(
          color: color.primayHeading,
          fontSize: headingsize,
          fontWeight: FontWeight.bold),
      displayMedium: TextStyle(
          color: color.primayColor,
          fontSize: mediumSize,
          fontWeight: FontWeight.w500),
      displaySmall: TextStyle(
          color: color.secondaryColor,
          fontSize: smallSize,
          fontWeight: FontWeight.normal),
    );
  }
}
