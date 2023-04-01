import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Utils/Routes.dart';

//Paddings
var mainBodyPadding = EdgeInsets.symmetric(
    horizontal: (Get.width * 0.06), vertical: (Get.height * 0.02));
var mainBodyPadding2 = EdgeInsets.symmetric(
  horizontal: (Get.width * 0.06),
);
var headerPadding = EdgeInsets.only(
  top: Get.height * 0.02,
);
var tab1Padding = EdgeInsets.only(
    right: Get.width * 0.06, left: Get.width * 0.06, bottom: Get.height * 0.05);
var tab2Padding = EdgeInsets.only(
    right: Get.width * 0.06,
    left: Get.width * 0.06,
    bottom: Get.height * 0.05,
    top: Get.height * 0.03);

var subscriptionBodyPadding = EdgeInsets.symmetric(
    horizontal: (Get.width * 0.04), vertical: (Get.height * 0.017));
var homeScreenHeaderPadding = EdgeInsets.only(
    left: Get.height * 0.05, right: Get.width * 0.04, top: Get.height * 0.04);

//Shadow for Containers
var shadowConstant = const [
  BoxShadow(
    color: Colors.grey,
    offset: Offset(
      0.10,
      0.10,
    ),
    blurRadius: 0.10,
    spreadRadius: 0.10,
  ), //BoxShadow
  BoxShadow(
    color: Colors.white,
    offset: Offset(0.0, 0.0),
    blurRadius: 0.0,
    spreadRadius: 0.0,
  ), //BoxShadow
];

//DropDowns
String maritalStatus = "";
final List<String> maritalStatusItems = [
  'Single',
  'Married',
  'Divorced',
  'Widow',
];

String nationality = "";
final List<String> nationalityItems = [
  'Pakistani',
  'American',
  'Turkish',
  'British',
];

String city = "";
final List<String> cityItems = [
  'Karachi',
  'Lahore',
  'Islamabad',
  'Peshawar',
];

String religion = "";
final List<String> religionItems = [
  'Muslim',
  'Christian',
  'Hindu',
  'Atheist',
  'Jew',
  'Others',
];

String profession = "";
final List<String> professionItems = [
  'Engineer',
  'Architect',
  'Dentist',
  'Accountant',
  'Student',
];

String profileFilters = "";
final List<String> profileFiltersItems = [
  'Preferred Souls',
  'Similar Interests',
  'Nearby Souls',
];

//Policy Content placed in Array.
final List<String> policy = [
  'Age should be 18+ years.',
  'Selfie Verification is mandatory.',
  'Only respectable and ethical images are permissible.',
  'Foul language is prohibited.',
  'Use/misuse this app for any illegal purposes is prohibited.',
  'Soul Milun will not be accountable for any personal or financial damages.',
  'Personal products/advertisements are prohibited.',
  'Subscriptions are non refundable.',
  'Subscription are auto renewed if not cancelled timely.',
];

//Data For Discount Screen ListView
final List<String> discountTypes = [
  'Restaurants',
  'Fashion & Clothing',
  'Fitness',
  'Furniture',
  'Cosmetics',
];
final List<String> imageArray = [
  'assets/images/DiscountImage/restaurant_image2x.png',
  'assets/images/DiscountImage/fashion_image2x.png',
  'assets/images/DiscountImage/fitness_image2x.png',
  'assets/images/DiscountImage/furniture_image2x.png',
  'assets/images/DiscountImage/cosmetics_image2x.png',
];
//Routes for each Discount Box in the ListView
final List<String> screens = [
  '/welcome',
  '/homeScreen',
  '/subscription',
  '/subscriptionPayment',
  '/congratulations',
];
