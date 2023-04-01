import 'package:get/get.dart';
import 'package:apna_mart/Screens/AddCard/AddCardScreen.dart';
import 'package:apna_mart/Screens/Authentication/ForgetPassword/ForgetPasswordScreen.dart';
import 'package:apna_mart/Screens/Authentication/ForgetPassword/ForgetPasswordScreenOTP.dart';
import 'package:apna_mart/Screens/Authentication/NewPassword/NewPasswordScreen.dart';
import 'package:apna_mart/Screens/Authentication/SaveAccount/SaveAccountScreen.dart';
import 'package:apna_mart/Screens/Authentication/SelfieCheck/SelfieCheckScreen1.dart';
import 'package:apna_mart/Screens/Authentication/SignUp/SignUpScreen.dart';
import 'package:apna_mart/Screens/Authentication/Verification/VerificationScreen1.dart';
import 'package:apna_mart/Screens/Authentication/Verification/VerificationScreen2OTP.dart';
import 'package:apna_mart/Screens/Authentication/Welcome/WelcomeScreen.dart';
import 'package:apna_mart/Screens/Congratulations/CongratulationsScreen.dart';
import 'package:apna_mart/Screens/Discount/DiscountScreen.dart';
import 'package:apna_mart/Screens/Home/HomeScreen.dart';
import 'package:apna_mart/Screens/MembersProfile/MembersProfileScreen.dart';
import 'package:apna_mart/Screens/Personalization/PublicInfoScreen.dart';
import 'package:apna_mart/Screens/Policy/PolicyScreen.dart';
import 'package:apna_mart/Screens/Profile/ProfileCompleteScreen.dart';
import 'package:apna_mart/Screens/Profile/ProfileSettingsScreen.dart';
import 'package:apna_mart/Screens/Splash/SplashScreen.dart';
import 'package:apna_mart/Screens/Subscriptions/SubscriptionScreen1.dart';
import 'package:apna_mart/Screens/Subscriptions/SubscriptionScreen2Payment.dart';
import '../Screens/Authentication/AccountLogin/AccountLoginScreen2.dart';
import '../Screens/Authentication/Login/LoginScreen.dart';

class RoutesClass {
  static String splash = "/";
  static String welcomePage = "/welcome";
  static String logInPage = "/logIn";
  static String signupPage = "/signup";
  static String newPasswordScreen = "/newPassword";
  static String forgetPasswordScreen = "/forgetPassword";
  static String forgetPassScreenOTP = "/forgetPasswordOTP";
  static String verificationScreen = "/verification";
  static String verificationScreenOTP = "/verificationOTP";
  static String accountLoginScreen2 = "/accountLogin";
  static String saveAccountScreen = "/saveAccount";
  static String publicInfoScreen = "/publicInfo";
  static String policyScreen = "/policy";
  static String subscriptionScreen = "/subscription";
  static String subscriptionScreen2Payment = "/subscriptionPayment";
  static String addCardScreen = "/addCard";
  static String congratsScreen = "/congratulations";
  static String selfieCheckScreen = "/selfieCheck";
  static String homeScreen = "/homeScreen";
  static String completeProfile = "/completeProfile";
  static String profileSettingsScreen = "/profileSettings";
  static String discountsScreen = "/discounts";
  static String membersProfileScreen = "/membersProfile";

  static String getSplash() => splash;
  static String getWelcomeRoute() => welcomePage;
  static String getLoginInRoute() => logInPage;
  static String getSignUpRoute() => signupPage;
  static String getNewPasswordRoute() => newPasswordScreen;
  static String getForgetPasswordRoute() => forgetPasswordScreen;
  static String getForgetPasswordOTPRoute() => forgetPassScreenOTP;
  static String getVerificationRoute() => verificationScreen;
  static String getVerificationOTPRoute() => verificationScreenOTP;
  static String getAccountLogin2Route() => accountLoginScreen2;
  static String getSaveAccountRoute() => saveAccountScreen;
  static String getPublicInfoRoute() => publicInfoScreen;
  static String getPolicyRoute() => policyScreen;
  static String getSubscriptionRoute() => subscriptionScreen;
  static String getSubscriptionPaymentRoute() => subscriptionScreen2Payment;
  static String getAddCardRoute() => addCardScreen;
  static String getCongratulationsRoute() => congratsScreen;
  static String getSelfieCheckRoute() => selfieCheckScreen;
  static String getHomeScreenRoute() => homeScreen;
  static String getCompleteProfileRoute() => completeProfile;
  static String getProfileSettingsRoute() => profileSettingsScreen;
  static String getDiscountsRoute() => discountsScreen;
  static String getMembersProfileRoute() => membersProfileScreen;

  static List<GetPage> routes = [
    GetPage(page: () => const SplashScreen(), name: splash),
    GetPage(
        page: () => const WelcomeScreen(),
        name: welcomePage,
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 600)),
    GetPage(
        page: () => const SignUpScreen(),
        name: signupPage,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const LoginScreen(),
        name: logInPage,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const ForgetPasswordScreen(),
        name: forgetPasswordScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const ForgetPasswordScreenOTP(),
        name: forgetPassScreenOTP,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const VerificationScreen(),
        name: verificationScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const VerificationScreenOTP(),
        name: verificationScreenOTP,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const NewPasswordScreen(),
        name: newPasswordScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const AccountLoginScreen2(),
        name: accountLoginScreen2,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const SaveAccountScreen(),
        name: saveAccountScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const PublicInfoScreen(),
        name: publicInfoScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const PolicyScreen(),
        name: policyScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const SubscriptionScreen(),
        name: subscriptionScreen,
        transition: Transition.rightToLeft),
    GetPage(
      page: () => const SubscriptionScreen2Payment(),
      name: subscriptionScreen2Payment, /*transition: Transition.rightToLeft*/
    ),
    GetPage(
      page: () => const AddCardScreen(),
      name: addCardScreen, /*transition: Transition.rightToLeft*/
    ),
    GetPage(
        page: () => const CongratulationsScreen(),
        name: congratsScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const SelfieCheckScreen1(),
        name: selfieCheckScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const HomeScreen(),
        name: homeScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const ProfileCompleteScreen(),
        name: completeProfile,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const ProfileSettingsScreen(),
        name: profileSettingsScreen,
        transition: Transition.noTransition),
    GetPage(
        page: () => const DiscountScreen(),
        name: discountsScreen,
        transition: Transition.rightToLeft),
    GetPage(
        page: () => const MembersProfileScreen(),
        name: membersProfileScreen,
        transition: Transition.rightToLeft),
  ];
}
