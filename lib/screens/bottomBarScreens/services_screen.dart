import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/models/service.dart';
import 'package:scheduling_app/styles/colors.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    List<Service> services = [
      Service(serviceName: 'Dummy Service', time: '24'),
      Service(serviceName: 'Dummy Service', time: '30'),
      Service(serviceName: 'Dummy Service', time: '45'),
      Service(serviceName: 'Dummy Service', time: '15'),
      Service(serviceName: 'Dummy Service', time: '35'),
      Service(serviceName: 'Dummy Service', time: '45'),
      Service(serviceName: 'Dummy Service', time: '20'),
      Service(serviceName: 'Dummy Service', time: '10'),
      Service(serviceName: 'Dummy Service', time: '05'),
      Service(serviceName: 'Dummy Service', time: '50'),
    ];

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: height * 0.3,
                  width: width,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.04),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
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
                              SizedBox(width: width * 0.22),
                              Text(
                                'Services',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
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
              Positioned(
                bottom: 0,
                child: Container(
                    height: height * 0.73,
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 1,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 10),
                          itemCount: services.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return ServicesContainer(
                              service: services[index],
                            );
                          }),
                    )),
              )
            ],
          )),
    );
  }
}

class ServicesContainer extends StatelessWidget {
  final Service? service;

  const ServicesContainer({this.service});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text(
                    service!.time!,
                    style: TextStyle(
                      fontSize: 27,
                      fontFamily: 'pop-Bold',
                    ),
                  )),
              Container(
                width: 80,
                height: 80,
                child: Image.asset(
                  'assets/images/dummyService.png',
                ),
              ),
            ],
          ),
          SizedBox(height: 14),
          Text(
            service!.serviceName!,
            style: TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: AppColors.backgroundTiles,
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
