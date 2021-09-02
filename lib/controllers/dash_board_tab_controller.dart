import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:scheduling_app/screens/bottomBarScreens/dashboard_Tabs/daily_tab.dart';
import 'package:scheduling_app/screens/bottomBarScreens/dashboard_Tabs/monthly_calender.dart';
import 'package:scheduling_app/screens/bottomBarScreens/dashboard_Tabs/weekly_tab.dart';

class DashboardTabBarController extends GetxController {
  int selectedIndex = 0;

  List<Widget> children = [
    DailyTab(),
    WeeklyTab(),
    MonthView(),
  ];

  void changeIndex(int index, PageController _pageController) {
    selectedIndex = index;
    _pageController.animateToPage(selectedIndex,
        duration: Duration(microseconds: 600), curve: Curves.linear);
    update();
  }
}
