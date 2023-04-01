import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/Buttons/CustomButton.dart';
import 'package:apna_mart/Components/DropDowns/CustomDropDown1.dart';
import 'package:apna_mart/Components/Textfields/CustomTextField4.dart';

import 'package:apna_mart/Utils/Constants.dart';
import '../../Components/DateTimePicker/CustomDateTimePicker.dart';
import '../../Components/Headers/HeaderWithBackIcon.dart';
import '../../Components/RadioButtons/CustomRadioButtons.dart';
import '../../Utils/Routes.dart';
import '../../Utils/ThemeColors.dart';

class PublicInfoScreen extends StatefulWidget {
  const PublicInfoScreen({Key? key}) : super(key: key);

  @override
  State<PublicInfoScreen> createState() => _PublicInfoScreenState();
}

class _PublicInfoScreenState extends State<PublicInfoScreen> {
  TextEditingController dobController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: headerPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: HeaderWithBackIcon(
                          title: "Public Information",
                          subtitle: "Remember, this info is visible to Public.",
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: ThemeColors().containerOutlineColor,
                  thickness: Get.height * 0.0005,
                ),
                Padding(
                  padding: mainBodyPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "This’ll help us to customize your feed according to your needs.",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Text(
                          "Gender",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor: ThemeColors().buttonColor,
                        ),
                        child: CustomRadioButtons(
                          option1: "Male",
                          option2: "Female",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.03),
                        child: Text(
                          "Marital Status",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      CustomDropDown1(
                          product: maritalStatus,
                          productItems: maritalStatusItems,
                          onChanged: dropDownValueMarital,
                          label: "Marital Status"),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Text(
                          "Date Of Birth",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      CustomDatePicker(
                        label: "DD-MM-YYYY",
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Text(
                          "Height (Inches)",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      CustomTextfield4(
                        controller: heightController,
                        label: "Height",
                        inputType: TextInputType.number,
                        hint: "Enter Height",
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Text(
                          "Nationality",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      CustomDropDown1(
                          product: nationality,
                          productItems: nationalityItems,
                          onChanged: dropDownValueNationality,
                          label: "Nationality"),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Text(
                          "City",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      CustomDropDown1(
                          product: city,
                          productItems: cityItems,
                          onChanged: dropDownValueCity,
                          label: "City"),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Text(
                          "Religion",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Optional",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      CustomDropDown1(
                          product: religion,
                          productItems: religionItems,
                          onChanged: dropDownValueReligion,
                          label: "Religion"),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Text(
                          "Profession",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Optional",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      CustomDropDown1(
                        product: profession,
                        productItems: professionItems,
                        onChanged: dropDownValueProfession,
                        label: "Profession",
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.04),
                        child: Text(
                          "Upload Image",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: Get.height * 0.03,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(6),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: Get.height * 0.045,
                                    horizontal: Get.width * 0.055),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ThemeColors().deleteFromThisDevice,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6)),
                                ),
                                child: Icon(
                                  Icons.add_a_photo_outlined,
                                  color: ThemeColors().iconColor,
                                  size: 30,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(6),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: Get.height * 0.045,
                                    horizontal: Get.width * 0.055),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ThemeColors().deleteFromThisDevice,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6))),
                                child: Icon(
                                  Icons.add_a_photo_outlined,
                                  color: ThemeColors().iconColor,
                                  size: 30,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(6),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: Get.height * 0.045,
                                    horizontal: Get.width * 0.055),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ThemeColors().deleteFromThisDevice,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6))),
                                child: Icon(
                                  Icons.add_a_photo_outlined,
                                  color: ThemeColors().iconColor,
                                  size: 30,
                                ),
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(6),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: Get.height * 0.045,
                                    horizontal: Get.width * 0.055),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ThemeColors().deleteFromThisDevice,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6))),
                                child: Icon(
                                  Icons.add_a_photo_outlined,
                                  color: ThemeColors().iconColor,
                                  size: 30,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: Get.height * 0.06),
                        child: CustomButton(
                            name: "Save",
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
      ),
    );
  }

  void nextScreen() async {
    /*if (_formKey.currentState!.validate()) {*/
    Get.toNamed(RoutesClass.completeProfile);
    /*}*/
  }

  void dropDownValueMarital(String? value) {
    setState(() {
      maritalStatus = (value) as String;
    });
  }

  void dropDownValueNationality(String? value) {
    setState(() {
      nationality = (value) as String;
    });
  }

  void dropDownValueCity(String? value) {
    setState(() {
      city = (value) as String;
    });
  }

  void dropDownValueReligion(String? value) {
    setState(() {
      religion = (value) as String;
    });
  }

  void dropDownValueProfession(String? value) {
    setState(() {
      profession = (value) as String;
    });
  }
}
