import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/screens/bottomBarScreens/add_service_provider_screen.dart';
import 'package:scheduling_app/styles/colors.dart';

import 'create_schedule_screen.dart';

class CreateWorkSpaceScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: height * 0.2,
                    width: width,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.02),
                        Container(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: height * 0.042,
                                  width: height * 0.042,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.mainRed,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.1),
                              Text(
                                'Create WorkSpace',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              )
                            ],
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
                  height: height * 0.84,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: ListView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shop Title',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                isCollapsed: true,
                                contentPadding: EdgeInsets.only(top: 15),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5),
                                ),
                                prefixIconConstraints: BoxConstraints(
                                  minWidth: 25,
                                  minHeight: 35,
                                ),
                                suffixIcon: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 24,
                                ),
                                hintText: "Shop",
                                hintStyle: TextStyle(
                                  fontSize: 13,
                                  color: AppColors.textLight,
                                  fontFamily: 'pop-light',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.035),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.backgroundTiles,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CreateWorkSpaceTile(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Divider(
                                    color: AppColors.textLight,
                                  ),
                                ),
                                CreateWorkSpaceTile(),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.035),
                        GestureDetector(
                          onTap: () {
                            Get.to(AddServiceProviderScreen());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add Service Provider',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Icon(
                                Icons.add_box_outlined,
                                size: 30,
                                color: AppColors.mainRed,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        ListTile(
                          title: Text(
                            'Jhone Doe',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          subtitle: Text(
                            'Shop Owner',
                            style: TextStyle(
                              color: AppColors.textLight,
                              fontSize: 12,
                            ),
                          ),
                          minLeadingWidth: 0,
                          leading: CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage(
                              'assets/images/girl2.png',
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.035),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Services',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 0.5),
                                ),
                                hintText: "xyz ...",
                                hintStyle: TextStyle(
                                  fontSize: 13,
                                  color: AppColors.textLight,
                                  fontFamily: 'pop-light',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.035),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ServicesWidget(
                              height: height,
                              isSelected: false,
                            ),
                            ServicesWidget(
                              height: height,
                              isSelected: true,
                            ),
                            ServicesWidget(
                              height: height,
                              isSelected: false,
                            )
                          ],
                        ),
                        SizedBox(height: height * 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ServicesWidget(
                              height: height,
                              isSelected: false,
                            ),
                            ServicesWidget(
                              height: height,
                              isSelected: false,
                            ),
                            ServicesWidget(
                              height: height,
                              isSelected: false,
                            )
                          ],
                        ),
                        SizedBox(height: height * 0.07),
                        GestureDetector(
                          onTap: () {
                            Get.to(CreateScheduleScreen());
                          },
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
                                'Request Workspace',
                                style: TextStyle(fontSize: height * 0.020),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.03),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class CreateWorkSpaceTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Dudung Sokmati',
        style: TextStyle(
          color: Colors.white,
          fontSize: Get.height * 0.020,
        ),
      ),
      subtitle: Text(
        'USA',
        style: TextStyle(
          color: AppColors.textLight,
          fontSize: Get.height * 0.019,
        ),
      ),
      minLeadingWidth: 0,
      trailing: Container(
        decoration: BoxDecoration(
            color: AppColors.mainRed, borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Text(
            'Choose',
            style: TextStyle(
              fontSize: Get.height * 0.018,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({
    required this.height,
    required this.isSelected,
  });

  final double height;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width * 0.27,
      decoration: BoxDecoration(
          color: AppColors.backgroundTiles,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: isSelected ? AppColors.mainRed : AppColors.backgroundTiles,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        child: Text(
          'Services',
          style: TextStyle(
            fontSize: height * 0.016,
            color: isSelected ? AppColors.mainRed : Colors.white,
          ),
        ),
      ),
    );
  }
}
