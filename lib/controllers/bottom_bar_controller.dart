import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:scheduling_app/screens/bottomBarScreens/dash_board_screen_1.dart';
import 'package:scheduling_app/screens/bottomBarScreens/settings_screen.dart';
import 'package:scheduling_app/screens/bottomBarScreens/shops_screen_2.dart';

class BottombarController extends GetxController {
  int selectedIndex = 0;

  List<Widget> children = [
    DashBoardScreen1(),
    ShopsScreen2(),

    Container(
      child: Center(child: Text('Contacts Screen')),
    ),
    //ServiceProviderScreen(),
    SettingScreen(),
  ];

  void changeIndex(int index, PageController _pageController) {
    selectedIndex = index;
    _pageController.animateToPage(selectedIndex,
        duration: Duration(microseconds: 600), curve: Curves.linear);

    update();
  }
}
