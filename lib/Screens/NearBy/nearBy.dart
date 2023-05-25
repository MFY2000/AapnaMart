import 'package:apna_mart/Components/BottomNavBar.dart';
import 'package:apna_mart/Components/TopAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class nearByScreen extends StatefulWidget {
  const nearByScreen({super.key});

  @override
  State<nearByScreen> createState() => _nearByScreenState();
}

class _nearByScreenState extends State<nearByScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.05, vertical: Get.height * 0.01),
          child: Column(
            children: [
              Text(
                "Near By",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 20,
              ),

              ListView.builder(itemBuilder: (context, index) => , itemCount: 10, shrinkWrap: true,),
            ],
          )),
      bottomNavigationBar: const CustombottomNavBar(),
    );
  }
}
