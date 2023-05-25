import 'package:apna_mart/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Utils/CustomTheme.dart';
import 'Utils/Routes.dart';
import 'package:camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
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
<<<<<<< Updated upstream
      // initialRoute: RoutesClass.getPolicy(),
=======
      initialRoute: RoutesClass.getnearBy(),
>>>>>>> Stashed changes
      getPages: RoutesClass.routes,
    );
  }
}
