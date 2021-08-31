import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/models/tileModel.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/week_calenders/weekly_calender.dart';
import 'package:scheduling_app/widgets/hometile.dart';

import '../new_appointment_screen.dart';

class DailyTab extends StatelessWidget {
  const DailyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var switchValue = false.obs;

    final List<TileModel> homeTilesList = [
      TileModel(
          name: 'Jhone Doe',
          time: '9 AM - 10 AM',
          status: 'Confirmed',
          pic: 'assets/images/girl.png',
          statusColor: Color(0xff1ED760),
          swipeFromRight: false,
          swipeText: 'Reschedule',
          statusTextColor: Colors.black,
          stretchExtent: 0.35),
      TileModel(
        name: 'Jhone Doe',
        time: '9 AM - 10 AM',
        status: 'Not Confirmed',
        pic: 'assets/images/girl.png',
        statusColor: AppColors.mainRed,
        swipeFromRight: true,
        swipeText: 'View',
        statusTextColor: Colors.white,
        stretchExtent: 0.25,
      ),
      TileModel(
        name: 'Jhone Doe',
        time: '4 PM - 5 PM',
        status: 'Break',
        pic: 'assets/images/girl.png',
        statusColor: Color(0xffD1D71E),
        swipeFromRight: true,
        swipeText: 'View',
        statusTextColor: Colors.black,
        stretchExtent: 0.25,
      )
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CalendarTimeline(
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
          SizedBox(height: 10),
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
          Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: switchValue.isFalse
                  ? CardsDisplay(homeTilesList: homeTilesList)
                  : TimeDisplay(),
            ),
          ),
        ],
      ),
    );
  }
}

class CardsDisplay extends StatelessWidget {
  const CardsDisplay({
    Key? key,
    required this.homeTilesList,
  }) : super(key: key);

  final List<TileModel> homeTilesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          tileModel: homeTilesList[0],
        ),
        SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            Get.to(NewAppointmentScreen());
          },
          child: Container(
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
        ),
        SizedBox(height: 15),
        ...homeTilesList.map((e) => GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  HomeTile(tileModel: e),
                  SizedBox(height: 15),
                ],
              ),
            )),
      ],
    );
  }
}

class TimeDisplay extends StatelessWidget {
  const TimeDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimeRow(time: '8 AM', color: Colors.white),
        SizedBox(height: 15),
        TimeRow(time: '9 AM', color: Color(0xff00CBFF)),
        SizedBox(height: 15),
        TimeRow(time: '10 AM', color: Color(0xff00CBFF)),
        GestureDetector(
          onTap: () {
            Get.to(NewAppointmentScreen());
          },
          child: Container(
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
        SizedBox(height: 15),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
