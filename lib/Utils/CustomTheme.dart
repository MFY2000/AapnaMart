import 'dart:ui';
import 'package:flutter/material.dart';

class CustomTheme {
  // Colors
  final primayColor = const Color(0xFF188AEC);
  final secondaryColor = const Color(0xFF50555C);

  final fontsColor = const Color(0xFF49454F);

  final highlight = const Color(0xFFFF0000);
  final highlight2 = const Color(0xFFF9B019);
  final primaryBTN = const Color(0xFF494E67);

  final lightColor = const Color(0xFFFFFFFF);
  final darkColor = const Color(0xFF000000);

  final backgroundColor = const Color(0xFFE2E8F0);
  final backgroundColor2 = const Color(0xFFF4F4F4);

  // Font Sizes
  final headingsize = 24.0;
  final mediumSize = 18.0;
  final smallSize = 16.0;

  final errorBorderWidth = 2.0;

  ThemeData theme() {
    return ThemeData(
      primaryColor: primayColor,
      secondaryHeaderColor: secondaryColor,
      scaffoldBackgroundColor: lightColor,
      primaryColorDark: darkColor,
      primaryColorLight: lightColor,

      // Fonts
      fontFamily: "Urbanist",

      // Complete Theme
      textTheme: textTheme(),
      iconTheme: iconTheme(),
      inputDecorationTheme: inputDecorationTheme(),
    );
  }

  buttonTheme() {
    return ButtonThemeData(
      buttonColor: primaryBTN,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme();
  }

  IconThemeData iconTheme() {
    return IconThemeData(
      color: secondaryColor,
      size: 24,
    );
  }

  TextTheme textTheme() {
    return TextTheme(
      displayLarge: TextStyle(
          color: fontsColor,
          fontFamily: "Urbanist",
          fontSize: headingsize,
          fontWeight: FontWeight.bold),
      displayMedium: TextStyle(
          color: fontsColor,
          fontFamily: "Urbanist",
          fontSize: mediumSize,
          fontWeight: FontWeight.normal),
      displaySmall: TextStyle(
          color: fontsColor,
          fontFamily: "Urbanist",
          fontSize: smallSize,
          fontWeight: FontWeight.normal),
      headlineLarge: TextStyle(
          color: primayColor,
          fontFamily: "aAtmospheric",
          fontSize: mediumSize,
          letterSpacing: 2,
          wordSpacing: 2,
          fontWeight: FontWeight.normal),
      headlineMedium: TextStyle(
          color: fontsColor,
          fontFamily: "Poppins",
          fontSize: mediumSize,
          letterSpacing: 2,
          wordSpacing: 2,
          fontWeight: FontWeight.bold),
      labelLarge: TextStyle(
          color: lightColor,
          fontFamily: "Urbanist",
          fontSize: smallSize,
          letterSpacing: 0.5,
          fontWeight: FontWeight.bold),
      labelSmall: TextStyle(
          color: darkColor,
          fontFamily: "Urbanist",
          fontSize: smallSize,
          letterSpacing: 0.5,
          fontWeight: FontWeight.bold),
      titleLarge: TextStyle(
          color: darkColor,
          fontFamily: "Urbanist",
          fontSize: 13,
          letterSpacing: 0.5,
          fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          color: darkColor,
          fontFamily: "Urbanist",
          fontSize: 13,
          letterSpacing: 0.5,
          fontWeight: FontWeight.normal),
      bodyLarge: TextStyle(
          color: darkColor,
          fontFamily: "Viga",
          fontSize: 24,
          letterSpacing: 0.5,
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(

      )
    );
  }
}
