import 'package:apna_mart/Components/Button/PrimaryBtn.dart';
import 'package:apna_mart/Components/Button/TextBtn.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class OnBoradingScreen extends StatefulWidget {
  const OnBoradingScreen({super.key});

  @override
  State<OnBoradingScreen> createState() => _OnBoradingScreenState();
}

class _OnBoradingScreenState extends State<OnBoradingScreen> {
  int currentIndex = 0;
  bool allowSkip = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slider();
  }

  slider() async {
    await Future.delayed(Duration(seconds: 3));
    if (currentIndex < boradingData.length - 1) {
      setState(() {
        currentIndex++;
      });

      slider();
    } else {
      setState(() {
        allowSkip = true;
        currentIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.15, vertical: Get.height * 0.1),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: Get.height * .45,
                        child: Image.asset(boradingData[currentIndex]["image"]!,
                            fit: BoxFit.contain)),
                    Text(
                      boradingData[currentIndex]["heading"]!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Text(
                      boradingData[currentIndex]["details"]!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayMedium,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: Get.height * 0.1),
                  height: Get.height * 0.01,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: boradingData.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: Container(
                            width: Get.width * 0.05,
                            height: Get.width * 0.05,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? Colors.black
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        );
                      }),
                ),
                SizedBox(height: Get.height * 0.05),
                allowSkip
                    ? PrimaryBtn(
                        title: "Continue",
                        ontapFunc: nextScreen,
                      )
                    : TextBtn(title: "Skip", ontapFunc: nextScreen),
              ],
            ),
          ),
        ));
  }

  nextScreen() {
    Get.offAndToNamed("/login");
  }
}
