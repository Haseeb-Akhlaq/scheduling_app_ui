import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/styles/colors.dart';

class CreateServiceScreen extends StatefulWidget {
  @override
  State<CreateServiceScreen> createState() => _CreateServiceScreenState();
}

class _CreateServiceScreenState extends State<CreateServiceScreen> {
  final double height = Get.height;
  final double width = Get.width;

  TextEditingController nameOfServiceController = TextEditingController();
  TextEditingController durationOfServiceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomInset: false,
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
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ),
                              Text(
                                'Create Service',
                                style: TextStyle(
                                  fontSize: 18,
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
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SingleChildScrollView(
                  child: Container(
                    height: height * 0.85,
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name of Service'),
                              SizedBox(height: height * 0.010),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTiles,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: TextField(
                                    controller: nameOfServiceController,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed: true,
                                      contentPadding: EdgeInsets.only(top: 5),
                                      border: InputBorder.none,
                                      prefixIconConstraints: BoxConstraints(
                                        minWidth: 25,
                                        minHeight: 35,
                                      ),
                                      prefixIcon: Transform.scale(
                                        scale: 0.8,
                                        child: SvgPicture.asset(
                                          'assets/images/service.svg',
                                        ),
                                      ),
                                      hintText: "    Dummy",
                                      hintStyle: TextStyle(
                                        fontSize: 13,
                                        color: AppColors.textLight,
                                        fontFamily: 'pop-light',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Description of Service'),
                              SizedBox(height: height * 0.010),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTiles,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: TextField(
                                    maxLines: 5,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed: true,
                                      contentPadding: EdgeInsets.only(top: 5),
                                      border: InputBorder.none,
                                      hintText: "xyz...",
                                      hintStyle: TextStyle(
                                        fontSize: 13,
                                        color: AppColors.textLight,
                                        fontFamily: 'pop-light',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Duration of Service'),
                              SizedBox(height: height * 0.010),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTiles,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: TextField(
                                    controller: durationOfServiceController,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed: true,
                                      contentPadding: EdgeInsets.only(top: 5),
                                      border: InputBorder.none,
                                      prefixIconConstraints: BoxConstraints(
                                        minWidth: 25,
                                        minHeight: 35,
                                      ),
                                      prefixIcon: Transform.scale(
                                        scale: 0.8,
                                        child: SvgPicture.asset(
                                          'assets/images/clock.svg',
                                        ),
                                      ),
                                      hintText: "   45",
                                      hintStyle: TextStyle(
                                        fontSize: 13,
                                        color: AppColors.textLight,
                                        fontFamily: 'pop-light',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Price of Service'),
                              SizedBox(height: height * 0.010),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTiles,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: TextField(
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      isCollapsed: true,
                                      contentPadding: EdgeInsets.only(top: 5),
                                      border: InputBorder.none,
                                      prefixIconConstraints: BoxConstraints(
                                        minWidth: 25,
                                        minHeight: 35,
                                      ),
                                      prefixIcon: Transform.scale(
                                        scale: 0.8,
                                        child: SvgPicture.asset(
                                          'assets/images/price.svg',
                                        ),
                                      ),
                                      hintText: "   999",
                                      hintStyle: TextStyle(
                                        fontSize: 13,
                                        color: AppColors.textLight,
                                        fontFamily: 'pop-light',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.04),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppColors.mainRed,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 10,
                              ),
                              child: Text('Add Service'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
