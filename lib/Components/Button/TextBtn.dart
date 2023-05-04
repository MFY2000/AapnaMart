import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {
  final String title;
  final void Function()? ontapFunc;
  const TextBtn({super.key, required this.title, this.ontapFunc});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ontapFunc,
        child: Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ));
  }
}
