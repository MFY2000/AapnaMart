import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Utils/ThemeColors.dart';

import '../../Components/CheckBox/CheckBoxLabeled.dart';
import '../../Components/Headers/HeaderWithBackIcon.dart';
import '../../Components/Textfields/CustomTextfield.dart';
import '../../Utils/Constants.dart';
import '../../Utils/Routes.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController cvcController = TextEditingController();
  TextEditingController nameOnCardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: headerPadding,
                child: HeaderWithBackIcon(
                  title: "Add A Card",
                  subtitle: "Enter Credit Card or Debit Card Details.",
                ),
              ),
              Padding(
                padding: mainBodyPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextfield(
                      controller: cardNumberController,
                      label: "Card Number",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: CustomTextfield(
                            controller: expiryController,
                            label: "MM/YY",
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Expanded(
                          child: CustomTextfield(
                            controller: cvcController,
                            label: "CVC",
                          ),
                        ),
                      ],
                    ),
                    CustomTextfield(
                      controller: nameOnCardController,
                      label: "Name On Card",
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.02),
                      child: const CheckBoxLabeled(
                        label: "Save this card for future checkouts.",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.05),
                      child: CustomButton(
                          name: "Save Card",
                          onClick: nextScreen,
                          color: ThemeColors().buttonColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void nextScreen() async {
    /*if (_formKey.currentState!.validate()) {*/
    Get.toNamed(RoutesClass.subscriptionScreen2Payment);
    /*}*/
  }
}
