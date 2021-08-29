import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/styles/colors.dart';

class CreateScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    ;

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
                                'Create Schedule',
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
                              'Select Date',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            TextField(
                              onTap: () {
                                showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now()
                                        .subtract(Duration(days: 365)),
                                    lastDate: DateTime.now()
                                        .add(Duration(days: 365)));
                              },
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
                                  Icons.calendar_today_outlined,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                hintText: "Date",
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
                              'Select Time',
                              style: TextStyle(
                                fontSize: 16,
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
                                  Icons.access_time_outlined,
                                  color: Colors.white,
                                  size: 26,
                                ),
                                hintText: "Time",
                                hintStyle: TextStyle(
                                  fontSize: 13,
                                  color: AppColors.textLight,
                                  fontFamily: 'pop-light',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.045),
                        TimeRow(time: '8 AM', color: Colors.white),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '9 AM', color: Color(0xff00CBFF)),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '10 AM', color: Color(0xff00CBFF)),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '11 AM', color: Color(0xff00CBFF)),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '12 PM', color: Color(0xff00CBFF)),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '2 PM', color: Color(0xff00CBFF)),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '3 PM', color: Color(0xff00CBFF)),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '5 PM', color: Color(0xff00CBFF)),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '6 PM', color: Colors.white),
                        SizedBox(height: height * 0.025),
                        TimeRow(time: '7 PM', color: Colors.white),
                        SizedBox(height: height * 0.025),
                        SizedBox(height: height * 0.07),
                        GestureDetector(
                          // onTap: () {
                          //   Get.to(RegistrationScreen2());
                          // },
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
                                'Create Schedule',
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

class TimeRow extends StatelessWidget {
  final String? time;
  final Color? color;

  const TimeRow({this.time, this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              time!,
              style: TextStyle(
                color: color,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 1,
                color: Colors.white.withOpacity(0.2),
              ),
            )
          ],
        ),
      ],
    );
  }
}
