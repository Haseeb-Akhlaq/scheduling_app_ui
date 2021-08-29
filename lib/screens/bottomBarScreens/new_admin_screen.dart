import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/models/serviceProviderModel.dart';
import 'package:scheduling_app/screens/bottomBarScreens/add_service_provider_screen.dart';
import 'package:scheduling_app/styles/colors.dart';

class NewAdminScreen extends StatefulWidget {
  @override
  _NewAdminScreenState createState() => _NewAdminScreenState();
}

class _NewAdminScreenState extends State<NewAdminScreen> {
  List<ServiceProvider> services = [
    ServiceProvider(
        name: 'Jhone Doe', pic: 'assets/images/girl2.png', highLighted: false),
    ServiceProvider(
        name: 'Jhone Doe', pic: 'assets/images/girl2.png', highLighted: true),
    ServiceProvider(
        name: 'Jhone Doe', pic: 'assets/images/girl2.png', highLighted: false),
    ServiceProvider(
        name: 'Jhone Doe', pic: 'assets/images/girl2.png', highLighted: false),
    ServiceProvider(
        name: 'Dudung Sokmati',
        pic: 'assets/images/girl2.png',
        highLighted: false),
    ServiceProvider(
        name: 'Dudung Sokmati',
        pic: 'assets/images/girl2.png',
        highLighted: false),
  ];

  changeShopOwner(element) {
    int index = services.indexOf(element);
    services.forEach((element) {
      element.highLighted = false;
    });
    services[index].highLighted = true;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    var newAdminSelected = true.obs;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.mainRed,
            onPressed: () {},
            child: Icon(
              Icons.add,
            ),
          ),
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
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Obx(
                                () => Text(
                                  newAdminSelected.value
                                      ? 'New Admin'
                                      : 'Existing Admin',
                                  style: TextStyle(
                                    fontSize: height * 0.025,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 32,
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
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                    height: height * 0.78,
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Obx(
                                      () => GestureDetector(
                                        onTap: () {
                                          newAdminSelected.value = true;
                                        },
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: width * 0.35,
                                              height: height * 0.18,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: newAdminSelected
                                                            .value
                                                        ? AppColors.mainRed
                                                        : AppColors.textLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 14),
                                                child: Column(
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/images/man.svg',
                                                      height: height * 0.09,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'New Admin',
                                                      style: TextStyle(
                                                          fontSize:
                                                              height * 0.016),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if (newAdminSelected.isTrue)
                                              Positioned(
                                                bottom: -5,
                                                right: -5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: AppColors.mainRed,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(3),
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                              )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Obx(
                                      () => GestureDetector(
                                        onTap: () {
                                          newAdminSelected.value = false;
                                        },
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: width * 0.35,
                                              height: height * 0.18,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: newAdminSelected
                                                            .isFalse
                                                        ? AppColors.mainRed
                                                        : AppColors.textLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5,
                                                        vertical: 15),
                                                child: Column(
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/images/man.svg',
                                                      height: height * 0.09,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Existing Admin',
                                                      style: TextStyle(
                                                          fontSize:
                                                              height * 0.016),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if (newAdminSelected.isFalse)
                                              Positioned(
                                                bottom: -5,
                                                right: -5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: AppColors.mainRed,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(3),
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                              )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.030),
                                Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Obx(
                                      () => Text(
                                        newAdminSelected.value
                                            ? 'Member'
                                            : 'Existing Admin',
                                        style: TextStyle(
                                          fontSize: height * 0.025,
                                          color: AppColors.mainRed,
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.015),
                          ...services.map((e) => ServiceProviderTile(
                                serviceProvider: e,
                                changeShopOwner: changeShopOwner,
                              )),
                          SizedBox(height: height * 0.01),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColors.mainRed,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'CONTINUE',
                                    style: TextStyle(fontSize: height * 0.020),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.035),
                        ],
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
