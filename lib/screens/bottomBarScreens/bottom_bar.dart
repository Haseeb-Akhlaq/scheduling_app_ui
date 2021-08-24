import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/controllers/bottom_bar_controller.dart';
import 'package:scheduling_app/styles/colors.dart';

class BottomBarPage extends StatelessWidget {
  final BottombarController _bottombarController =
      Get.put(BottombarController());
  final PageController _pageController = PageController();

  BottomBarPage({this.navigateTo});
  final navigateTo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: PageView(
            controller: _pageController,
            onPageChanged: (v) {
              _bottombarController.changeIndex(v, _pageController);
            },
            children: _bottombarController.children,
          )),
          GetBuilder<BottombarController>(builder: (_bottombarController) {
            return Container(
              color: AppColors.background,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _bottombarController.changeIndex(0, _pageController);
                        },
                        child: SvgPicture.asset(
                          'assets/images/home.svg',
                          color: _bottombarController.selectedIndex == 0
                              ? AppColors.mainRed
                              : Color(
                                  0xff707070,
                                ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _bottombarController.changeIndex(1, _pageController);
                        },
                        child: SvgPicture.asset(
                          'assets/images/store.svg',
                          color: _bottombarController.selectedIndex == 1
                              ? AppColors.mainRed
                              : Color(0xff707070),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.mainRed,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _bottombarController.changeIndex(2, _pageController);
                        },
                        child: SvgPicture.asset(
                          'assets/images/contacts.svg',
                          color: _bottombarController.selectedIndex == 2
                              ? AppColors.mainRed
                              : Color(0xff707070),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _bottombarController.changeIndex(3, _pageController);
                        },
                        child: SvgPicture.asset(
                          'assets/images/settings.svg',
                          color: _bottombarController.selectedIndex == 3
                              ? AppColors.mainRed
                              : Color(
                                  0xff707070,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
