import 'package:apna_mart/Screens/Cart/addTocart.dart';
import 'package:apna_mart/Screens/Home/Home.dart';
import 'package:apna_mart/Screens/Login/Internet/Internet.dart';
import 'package:apna_mart/Screens/Login/Login.dart';
import 'package:apna_mart/Screens/Login/MoreInfo/moreInfo.dart';
import 'package:apna_mart/Screens/Login/Policy/policy.dart';
import 'package:apna_mart/Screens/Login/Successfull/successfull.dart';
import 'package:apna_mart/Screens/NearBy/nearBy.dart';
import 'package:apna_mart/Screens/Product/productDetails.dart';
import 'package:apna_mart/Screens/Profile/Profile.dart';
import 'package:apna_mart/Screens/Search/Scan.dart';
import 'package:apna_mart/Screens/Splash/SplashScreen.dart';
import 'package:apna_mart/Screens/Onborading/onborading.dart';
import 'package:apna_mart/Screens/Worker/Order/Order.dart';
import 'package:apna_mart/Screens/Worker/Home2/Home2.dart';
import 'package:apna_mart/Screens/Worker/Products2/Product2.dart';
import 'package:get/get.dart';

import '../Screens/Product/productDetails.dart';

class RoutesClass {
  static String splash = "/";
  static String onborading = "/borading";
  static String login = "/login";
  static String home = "/home";
  static String addTocart = "/cart";
  static String successfull = "/successfull";
  static String profileInfo = "/profileInfo";
  static String policy = "/policy";
  static String scan = "/scan";
  static String nearBy = "/nearBy";
  static String internet = "/internet";
  static String profile = "/profile";
  static String productDetails = "/productDetails";
  //

  static String home2 = "/home2";
  static String Order = "/Order";
  static String products2 = "/products2";

  static String getSplash() => splash;
  static String getonborading() => onborading;
  static String getLogin() => login;
  static String getSuccessfull() => successfull;
  static String getHome() => home;
  static String getPolicy() => policy;
  static String getscan() => scan;
  static String getInfo() => profileInfo;
  static String getinternet() => internet;
  static String getnearBy() => nearBy;

  static List<GetPage> routes = [
    GetPage(page: () => const SplashScreen(), name: splash),
    GetPage(page: () => const OnBoradingScreen(), name: onborading),
    GetPage(page: () => const LoginScreen(), name: login),
    GetPage(page: () => const successFull(), name: successfull),
    GetPage(page: () => const HomeScreen(), name: home),
    GetPage(page: () => PolicyScreen(), name: policy),
    GetPage(page: () => const moreInfo(), name: profileInfo),
    GetPage(page: () => const ScanScreen(), name: scan),
    GetPage(page: () => const nearByScreen(), name: nearBy),
    GetPage(page: () => const Internet(), name: internet),
    GetPage(page: () => const addToCart(), name: addTocart),
    GetPage(page: () => const ProfileSettingsScreen(), name: profile),
    GetPage(page: () => const productScreen(), name: productDetails),
    //
    GetPage(page: () => const Home2Screen(), name: home2),
    GetPage(page: () => const Product2Screen(), name: products2),
    GetPage(page: () => const OrderScreen(), name: Order),
  ];
}
