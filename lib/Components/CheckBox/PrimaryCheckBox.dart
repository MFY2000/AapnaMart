import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class PrimaryCheckBox extends StatelessWidget {
  bool value;
  final String text;
  final void Function(bool?)? onChange;

  PrimaryCheckBox(
      {super.key,
      required this.onChange,
      required this.text,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: value, onChanged: onChange),
        TextButton(
          onPressed: () => Get.toNamed("/policy"),
          child: Text(
            text,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ],
    );
  }
}
