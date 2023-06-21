import 'package:apna_mart/Components/Card/onBoardingCard.dart';
import 'package:apna_mart/Utils/Constants.dart';
import 'package:apna_mart/Utils/CustomTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:show_up_animation/show_up_animation.dart';

class OnBoradingScreen extends StatefulWidget {
  const OnBoradingScreen({super.key});

  @override
  State<OnBoradingScreen> createState() => _OnBoradingScreenState();
}

class _OnBoradingScreenState extends State<OnBoradingScreen> {
  late PageController _pageController;
  int _currentPage = 0;
  bool isLastScreen = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: PageView(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  children: boradingData
                      .map((e) => onBoardingCard(
                            heading: e["heading"]!,
                            image: e["image"]!,
                            subHeading: e["details"]!,
                            scale: 1,
                          ))
                      .toList(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                boradingData.length,
                (index) => Indicator(isActive: index == _currentPage),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: Get.height * 0.03, bottom: Get.height * 0.03),
              child: _currentPage == boradingData.length - 1
                  ? ShowUpAnimation(
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.easeOutSine,
                      direction: Direction.vertical,
                      offset: 5,
                      child: GestureDetector(
                        onTap: () => Get.offNamed("/login"),
                        child: Padding(
                          padding: mainBodyPadding,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: CustomTheme().primaryBTN,
                            ),
                            width: double.infinity,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              child: Text(
                                "Continue",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 12.0),
                      child: Text(
                        "",
                        style: TextStyle(
                          fontSize: 15,
                          color: CustomTheme().backgroundColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }
}

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width:
          isActive ? 30 : 10, // Width of circular rectangle for selected page
      height: 10,
      decoration: BoxDecoration(
        borderRadius: isActive
            ? BorderRadius.circular(5)
            : BorderRadius.circular(
                5), // BorderRadius.circular(5) for unselected pages
        shape: BoxShape.rectangle,
        color:
            isActive ? CustomTheme().darkColor : CustomTheme().backgroundColor2,
      ),
    );
  }
}
