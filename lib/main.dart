import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Utils/CustomTheme.dart';
import 'Utils/Routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
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
      initialRoute: RoutesClass.getHome(),
      getPages: RoutesClass.routes,
    );
  }
}
  