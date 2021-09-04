import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/styles/colors.dart';

class NewAppointmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    var clientSelected = true.obs;
    var sliderValue = 20.0.obs;

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
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                              Text(
                                'New Appointment',
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
                child: Container(
                    height: height * 0.85,
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
                                          clientSelected.value = true;
                                        },
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: width * 0.35,
                                              height: height * 0.18,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: clientSelected.value
                                                        ? AppColors.mainRed
                                                        : AppColors.textLight,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 30,
                                                        vertical: 14),
                                                child: Column(
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/images/man.svg',
                                                      height: height * 0.09,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Client',
                                                      style: TextStyle(
                                                          fontSize:
                                                              height * 0.018),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if (clientSelected.isTrue)
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
                                          clientSelected.value = false;
                                        },
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: width * 0.35,
                                              height: height * 0.18,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: clientSelected
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
                                                      'assets/images/serviceProvider.svg',
                                                      height: height * 0.09,
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      'Service Provider',
                                                      style: TextStyle(
                                                          fontSize:
                                                              height * 0.016),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            if (clientSelected.isFalse)
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Services',
                                      style: TextStyle(
                                        fontSize: height * 0.025,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add_box_outlined,
                                      size: 30,
                                      color: AppColors.mainRed,
                                    )
                                  ],
                                ),
                                SizedBox(height: height * 0.030),
                                Row(
                                  children: [
                                    ServicesContainer2(),
                                    SizedBox(width: width * 0.035),
                                    ServicesContainer2(),
                                    SizedBox(width: width * 0.035),
                                    ServicesContainer2(),
                                  ],
                                ),
                                SizedBox(height: height * 0.035),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'August 2021',
                                    style: TextStyle(
                                      fontSize: height * 0.025,
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.035),
                              ],
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 10),
                          //   child: Container(
                          //     child: CalendarTimeline(
                          //       initialDate: DateTime(2020, 4, 20),
                          //       firstDate: DateTime(2019, 1, 15),
                          //       lastDate: DateTime(2020, 11, 20),
                          //       onDateSelected: (date) => print(date),
                          //       leftMargin: 10,
                          //       dayColor: Colors.white,
                          //       activeDayColor: Colors.white,
                          //       activeBackgroundDayColor: AppColors.mainRed,
                          //       locale: 'en_ISO',
                          //     ),
                          //   ),
                          // ),
                          SizedBox(height: height * 0.035),
                          Obx(
                            () => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Time',
                                    style: TextStyle(
                                      fontSize: height * 0.025,
                                    ),
                                  ),
                                  SizedBox(height: height * 0.030),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TimeWidget(
                                        height: height,
                                        isSelected: false,
                                        time: '08:30 AM',
                                      ),
                                      TimeWidget(
                                        height: height,
                                        isSelected: true,
                                        time: '09:00 AM',
                                      ),
                                      TimeWidget(
                                        height: height,
                                        isSelected: false,
                                        time: '09:30 AM',
                                      )
                                    ],
                                  ),
                                  SizedBox(height: height * 0.030),
                                  clientSelected.isTrue
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TimeWidget(
                                              height: height,
                                              isSelected: false,
                                              time: '10:00 AM',
                                            ),
                                            TimeWidget(
                                              height: height,
                                              isSelected: false,
                                              time: '10:30 AM',
                                            ),
                                            TimeWidget(
                                              height: height,
                                              isSelected: false,
                                              time: '11:00 AM',
                                            )
                                          ],
                                        )
                                      : Obx(
                                          () => SliderTheme(
                                            data: SliderThemeData(
                                              trackHeight: 1.5,
                                            ),
                                            child: Slider(
                                              label:
                                                  '${sliderValue.value.toInt()}',
                                              value: sliderValue.value,
                                              thumbColor: AppColors.mainRed,
                                              activeColor: AppColors.mainRed,
                                              inactiveColor:
                                                  Colors.white.withOpacity(0.1),
                                              onChanged: (v) {
                                                sliderValue.value = v;
                                              },
                                              min: 0,
                                              max: 100,
                                              divisions: 100,
                                            ),
                                          ),
                                        ),
                                  SizedBox(height: height * 0.040),
                                  GestureDetector(
                                    onTap: () {
                                      //Get.to(NewAppointmentScreen2());
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: AppColors.mainRed,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 15,
                                          horizontal: 10,
                                        ),
                                        child: Text(
                                          clientSelected.isTrue
                                              ? 'Request Appointment'
                                              : 'Make Appointment',
                                          style: TextStyle(
                                              fontSize: height * 0.020),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.030),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ],
          )),
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    required this.height,
    required this.isSelected,
    required this.time,
  });

  final double height;
  final bool isSelected;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.275,
      decoration: BoxDecoration(
          color: isSelected ? AppColors.mainRed : AppColors.backgroundTiles,
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.watch_later_outlined,
              color: Colors.white,
              size: height * 0.027,
            ),
            Text(
              '$time',
              style: TextStyle(fontSize: height * 0.015),
            )
          ],
        ),
      ),
    );
  }
}

class ServicesContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/24hours.svg',
              height: Get.height * 0.06,
            ),
            SizedBox(height: 14),
            Text(
              'Dummy Service',
              style: TextStyle(
                fontSize: Get.height * 0.010,
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: AppColors.backgroundTiles,
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
