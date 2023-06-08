import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:apna_mart/Screens/NearBy/listOfNearBy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class nearByScreen extends StatefulWidget {
  const nearByScreen({super.key});

  @override
  State<nearByScreen> createState() => _nearByScreenState();
}

class _nearByScreenState extends State<nearByScreen> {
  bool isLoaction = false;
  bool isLoading = true;
  String location = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isloaction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05, vertical: Get.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Near By (with 100 miles distance)",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                isLoading
                    ? Center(child: CircularProgressIndicator())
                    : !isLoaction
                        ? listOfNearby(loaction: location)
                        : Center(
                            child: Column(
                            children: [
                              const Text(
                                  "Please enable location permission for better experience"),
                              ElevatedButton(
                                  onPressed: () async {
                                    await Geolocator.requestPermission();
                                    getlocation();
                                  },
                                  child: const Text("Enable"))
                            ],
                          )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Top Marts",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                const listOfNearby(),
              ],
            )),
      ),
      bottomNavigationBar: const CustombottomNavBar(),
    );
  }

  isloaction() async {
    LocationPermission permission = await Geolocator.checkPermission();
    setState(() {
      isLoading = false;
      isLoaction = permission == LocationPermission.denied;
    });
  }

  getlocation() async {
    Position position = await Geolocator.getCurrentPosition();
    location = 'latitude:${position.latitude}, longitude:${position.longitude}';
    isloaction();
  }
}
