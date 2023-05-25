// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:get/get.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text("Product List"),
          actions: [
            IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Icons.save)),
            IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Icons.close))
          ],
        ),
        body: Stack(
          children: [
            Container(height: Get.height, child: CameraPreview(controller)),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: Get.height * .05),
                  height: Get.height * .9,
                  width: Get.width * .4,
                  color: Colors.black.withOpacity(0.5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                        10,
                        (index) => Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: Get.height * .01),
                              child: Text(
                                "6ae89q30$index",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            )),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
