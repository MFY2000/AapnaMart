import 'package:apna_mart/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Utils/CustomTheme.dart';
import 'Utils/Routes.dart';
import 'package:camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apna Mart',
      theme: (CustomTheme()).theme(),
      initialRoute: RoutesClass.getSplash(),
      getPages: RoutesClass.routes,
    );
  }
}
