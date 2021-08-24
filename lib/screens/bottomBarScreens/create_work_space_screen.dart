import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/screens/bottomBarScreens/add_service_provider_screen.dart';
import 'package:scheduling_app/styles/colors.dart';

class CreateWorkSpaceScreen extends StatelessWidget {
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
                  height: height * 0.82,
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
                              'Title',
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
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                hintText: "Workspace",
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Detail',
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
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shop Name',
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
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
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
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Number of Providers',
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
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textLight, width: 0.3),
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
                        )
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
