import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/week_calenders/weeklyCalenderOval.dart';

class DailyTabExtend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var switchValue = true.obs;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CalendarTimelineOval(
                initialDate: DateTime(2020, 4, 20),
                firstDate: DateTime(2019, 1, 15),
                lastDate: DateTime(2020, 11, 20),
                onDateSelected: (date) => print(date),
                leftMargin: 10,
                dayColor: Colors.white,
                activeDayColor: Colors.white,
                activeBackgroundDayColor: AppColors.mainRed,
                locale: 'en_ISO',
              ),
            ),
          ),
          Divider(
            color: Colors.white.withOpacity(0.5),
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Obx(
                  () => Switch(
                    activeColor: AppColors.mainRed,
                    activeTrackColor: Colors.black,
                    inactiveThumbColor: AppColors.mainRed,
                    value: switchValue.value,
                    onChanged: (v) {
                      switchValue.value = v;
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TimeRow(time: '8 AM', color: Colors.white),
                SizedBox(height: 15),
                TimeRow(time: '9 AM', color: Color(0xff00CBFF)),
                SizedBox(height: 15),
                TimeRow(time: '10 AM', color: Color(0xff00CBFF)),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.mainRed,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                TimeRow(time: '11 AM', color: Color(0xff00CBFF)),
                SizedBox(height: 15),
                TimeRow(time: '12 PM', color: Color(0xff00CBFF)),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      '1 PM',
                      style: TextStyle(
                        color: Color(0xff1ED760),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jhone Doe',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1ED760),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff1ED760),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'Confirmed',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
                SizedBox(height: 15),
                TimeRow(time: '2 PM', color: Color(0xff00CBFF)),
                SizedBox(height: 15),
                TimeRow(time: '3 PM', color: Color(0xff00CBFF)),
                Row(
                  children: [
                    Text(
                      '4 PM',
                      style: TextStyle(
                        color: AppColors.mainRed,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jhone Doe',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.mainRed,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.mainRed,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'Rejected',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
                SizedBox(height: 15),
                TimeRow(time: '5 PM', color: Color(0xff00CBFF)),
                SizedBox(height: 15),
                TimeRow(time: '6 PM', color: Colors.white),
                SizedBox(height: 15),
                TimeRow(time: '7 PM', color: Colors.white),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
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
