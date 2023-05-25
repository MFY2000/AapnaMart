import 'package:apna_mart/Screens/Home/Home.dart';
import 'package:apna_mart/Screens/Login/Login.dart';
import 'package:apna_mart/Screens/Login/MoreInfo/moreInfo.dart';
import 'package:apna_mart/Screens/Login/Policy/policy.dart';
import 'package:apna_mart/Screens/Login/Successfull/successfull.dart';
import 'package:apna_mart/Screens/NearBy/nearBy.dart';
import 'package:apna_mart/Screens/Search/Scan.dart';
import 'package:apna_mart/Screens/Splash/SplashScreen.dart';
import 'package:apna_mart/Screens/Onborading/onborading.dart';
import 'package:get/get.dart';

class RoutesClass {
  static String splash = "/";
  static String onborading = "/borading";
  static String login = "/login";
  static String home = "/home";
  static String addTocart = "/addTocart";
  static String successfull = "/successfull";
  static String profileInfo = "/profileInfo";
  static String policy = "/policy";
  static String scan = "/scan";
  static String nearBy = "/nearBy";

  static String getSplash() => splash;
  static String getonborading() => onborading;
  static String getLogin() => login;
  static String getSuccessfull() => successfull;
  static String getHome() => home;
  static String getPolicy() => policy;
  static String getscan() => scan;
  static String getInfo() => profileInfo;
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
  ];
}
