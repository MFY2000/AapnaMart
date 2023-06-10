// ignore_for_file: file_names

import 'package:apna_mart/Utils/API.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const List<Map<String, String>> boradingData = [
  {
    "image": "assets/images/1.jpg",
    "heading": "onBorading 1",
    "details":
        "Your Safety is our top priority. Make your profile with peace and ease"
  },
  {
    "image": "assets/images/2.jpg",
    "heading": "onBorading 2",
    "details":
        "Your Safety is our top priority. Make your profile with peace and ease"
  },
  {
    "image": "assets/images/3.jpg",
    "heading": "onBorading 3",
    "details":
        "Your Safety is our top priority. Make your profile with peace and ease"
  },
];
const List<String> productTab = [
  "New",
  "Last Order",
  "Common Products",
  "Monthly Grocery"
];
const List<Map<String, dynamic>> featureGrid = [
  {"name": "Monthly Bill", "image": "1.png"},
  {"name": "Shops", "image": "2.png"},
  {"name": "My Account", "image": "3.png"},
  {"name": "Card", "image": "4.png"},
  {"name": "Bill", "image": "5.png"},
  {"name": "Report", "image": "6.png"},
  {"name": "My Order", "image": "7.png"},
  {"name": "Receipt", "image": "8.png"},
];

int selectedProductTab = 0;
int selectedScreen = 2;

List<Map<String, dynamic>> screenCount = [
  {"name": "Scan", "icon": Icons.fit_screen_sharp, "route": "/scan"},
  {"name": "Location", "icon": Icons.location_on, "route": "/nearBy"},
  {"name": "Home", "icon": Icons.home_outlined, "route": "/home"},
  {"name": "Cart", "icon": Icons.shopping_cart, "route": "/cart"},
  {"name": "Profile", "icon": Icons.person, "route": "/profile"},
];

String welcomeMessage =
    "We're delighted to have you here. To ensure the best possible experience, we kindly request you to provide us with some additional details. By sharing a bit about yourself and your specific needs, we can tailor our assistance to better suit you.";

var mainBodyPadding = EdgeInsets.symmetric(
    horizontal: Get.width * 0.06, vertical: Get.height * 0.02);

late List<CameraDescription> cameras;
late GetStorage storage;
late API api;

late var profileData;
late List<dynamic> productList = [];
late List<dynamic> cartList = [];
late List<dynamic> orderList;
late dynamic selectedProduct;
