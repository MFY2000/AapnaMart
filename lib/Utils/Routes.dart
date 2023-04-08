import 'package:apna_mart/Screens/Onborading/onborading.dart';
import 'package:apna_mart/Screens/Splash/SplashScreen.dart';
import 'package:get/get.dart';

class RoutesClass {
  static String splash = "/";
  static String onborading = "/onborading ";

  static String getSplash() => splash;
  static String getonborading() => onborading;

  static List<GetPage> routes = [
    GetPage(page: () => const SplashScreen(), name: splash),
    GetPage(
        page: () => const onboradingScreen(),
        name: onborading,
        transition: Transition.rightToLeft),
  ];
}
