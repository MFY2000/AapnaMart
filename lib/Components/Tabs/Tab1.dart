import 'package:flutter/material.dart';

import '../../Utils/Constants.dart';
import '../Blocks/ProfileBlock.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: tab1Padding,
        child: Column(
          children: const [
            ProfileBlock(title: "Preferred Souls"),
            ProfileBlock(title: "Similar Interests"),
            ProfileBlock(title: "Nearby"),
          ],
        ),
      ),
    );
  }
}
