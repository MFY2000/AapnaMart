// ignore_for_file: file_names

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

const String boradingImage =
    "https://img.freepik.com/free-vector/happy-freelancer-with-computer-home-young-man-sitting-armchair-using-laptop-chatting-online-smiling-vector-illustration-distance-work-online-learning-freelance_74855-8401.jpg?w=2000";

const List<Map<String, String>> boradingData = [
  {
    "image": boradingImage,
    "heading": "Compatible Partners 1",
    "details":
        "Your Safety is our top priority. Make your profile with peace and ease"
  },
  {
    "image": boradingImage,
    "heading": "Compatible Partners 2",
    "details":
        "Your Safety is our top priority. Make your profile with peace and ease"
  },
  {
    "image": boradingImage,
    "heading": "Compatible Partners 3",
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
const List<String> featureGrid = [
  "Monthly Bill",
  "Shops",
  "My Account",
  "Card",
  "Bill",
  "Report",
  "My Order",
  "Receipt"
];

const selectedProductTab = 0;
int selectedScreen = 2;

List<Map<String, dynamic>> screenCount = [
  {"name": "Scan", "icon": Icons.fit_screen_sharp, "route": "/scan"},
  {"name": "Location", "icon": Icons.location_on, "route": "/location"},
  {"name": "Home", "icon": Icons.home_outlined, "route": "/home"},
  {"name": "Cart", "icon": Icons.shopping_cart, "route": "/cart"},
  {"name": "Profile", "icon": Icons.person, "route": "/profile"},
];



late List<CameraDescription> cameras;