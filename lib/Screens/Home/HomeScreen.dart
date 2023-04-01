import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apna_mart/Components/AlertBox/EarnDialogBox.dart';
import 'package:apna_mart/Components/AlertBox/SubscriptionReminderAlertBox.dart';
import 'package:apna_mart/Components/Rows/ProfileInfoRow2.dart';
import 'package:apna_mart/Components/Tabs/Tab1.dart';
import 'package:apna_mart/Utils/Constants.dart';
import '../../Components/NavigationBar/CustomBottomNavigationBar.dart';
import '../../Components/Tabs/Tab2.dart';
import '../../Components/Tabs/Tab3.dart';
import '../../Utils/ThemeColors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int selectedTab = 0;
  Color fontColor = Colors.white;
  List<Color> tabsColors = [
    ThemeColors().soulColor,
    Colors.green.shade700,
    Colors.blue.shade700
  ];
  List<String> tabsText = ["Soul Members", "Earn USD/PKR", "Career"];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    Future.delayed(const Duration(seconds: 0), () {
      showDialog(
        context: context,
        builder: (context) => const SubscriptionReminderAlertBox(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: homeScreenHeaderPadding,
              child: const ProfileInfoRow2(),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: Get.height * 0.04),
                    child: TabBar(
                      onTap: (index) {
                        setState(() {
                          selectedTab = index;
                        });
                        if (index == 1) {
                          showDialog(
                            context: context,
                            builder: (context) => const EarnDialogBox(),
                          );
                        }
                      },
                      controller: _tabController,
                      labelPadding: EdgeInsets.zero,
                      splashFactory: InkRipple.splashFactory,
                      labelStyle: const TextStyle(
                        fontSize: 14,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: "Urbanist",
                      ),
                      unselectedLabelColor: Colors.white,
                      indicatorColor: tabsColors[selectedTab],
                      indicatorWeight: 3,
                      labelColor: Colors.white,
                      tabs: tabMenu(),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: const [
                        Tab1(),
                        Tab2(),
                        Tab3(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }

  /* void customAlertBox (BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const SubscriptionReminderAlertBox(),
    );
  }*/
  tabMenu() {
    List<Widget> temp = [];
    for (int i = 0; i < tabsColors.length; i++) {
      temp.add(
        Container(
          width: double.infinity,
          color: selectedTab == i ? Colors.white : tabsColors[i],
          child: Tab(
            child: Text(
              tabsText[i],
              style: TextStyle(
                color:
                    selectedTab != i ? Colors.white : tabsColors[selectedTab],
              ),
            ),
          ),
        ),
      );
    }
    return temp;
  }
}
