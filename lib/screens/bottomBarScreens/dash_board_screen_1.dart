import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/controllers/dash_board_tab_controller.dart';
import 'package:scheduling_app/screens/bottomBarScreens/shops_screen.dart';
import 'package:scheduling_app/styles/colors.dart';

class DashBoardScreen1 extends StatelessWidget {
  final PageController _pageController = PageController();

  final DashboardTabBarController _tabBarController =
      Get.put(DashboardTabBarController());

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Container(
                    height: height * 0.3,
                    width: width,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.02),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => ShopsScreen());
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                              ),
                              Text(
                                'Dashboard',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 6,
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isCollapsed: true,
                                  contentPadding: EdgeInsets.only(top: 5),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 25,
                                    minHeight: 35,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: AppColors.textLight,
                                  ),
                                  hintText: "    Search",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textLight,
                                    fontFamily: 'pop-light',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            child: GetBuilder<DashboardTabBarController>(
                                builder: (_bottombarController) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _tabBarController.changeIndex(
                                          0, _pageController);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          bottom: 0, right: 10, left: 10),
                                      child: Text(
                                        'Daily',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              _tabBarController.selectedIndex ==
                                                      0
                                                  ? Colors.white
                                                  : AppColors.textLight,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _tabBarController.changeIndex(
                                          1, _pageController);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          bottom: 0, right: 10, left: 10),
                                      child: Text(
                                        'Weekly',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              _tabBarController.selectedIndex ==
                                                      1
                                                  ? Colors.white
                                                  : AppColors.textLight,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _tabBarController.changeIndex(
                                          2, _pageController);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          bottom: 0, right: 8, left: 0),
                                      child: Text(
                                        'Monthly',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              _tabBarController.selectedIndex ==
                                                      2
                                                  ? Colors.white
                                                  : AppColors.textLight,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                    height: height * 0.63,
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: GetBuilder<DashboardTabBarController>(
                              builder: (_bottombarController) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 65,
                                  height: 10,
                                  padding: EdgeInsets.only(
                                      bottom: 0, right: 10, left: 10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                    color: _tabBarController.selectedIndex == 0
                                        ? AppColors.mainRed
                                        : Colors.transparent,
                                  ))),
                                ),
                                Container(
                                  width: 75,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                    color: _tabBarController.selectedIndex == 1
                                        ? AppColors.mainRed
                                        : Colors.transparent,
                                  ))),
                                ),
                                Container(
                                  width: 75,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                    color: _tabBarController.selectedIndex == 2
                                        ? AppColors.mainRed
                                        : Colors.transparent,
                                  ))),
                                ),
                              ],
                            );
                          }),
                        ),
                        Expanded(
                          child: PageView(
                            controller: _pageController,
                            children: _tabBarController.children,
                            onPageChanged: (v) {
                              _tabBarController.changeIndex(v, _pageController);
                            },
                          ),
                        ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
