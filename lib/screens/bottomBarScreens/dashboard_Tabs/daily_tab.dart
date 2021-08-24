import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/models/tileModel.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/widgets/hometile.dart';

import 'daily_tab_extend.dart';

class DailyTab extends StatelessWidget {
  const DailyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var switchValue = true.obs;

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
          // Container(
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 20),
          //     child: CalendarTimeline(
          //       initialDate: DateTime(2020, 4, 20),
          //       firstDate: DateTime(2019, 1, 15),
          //       lastDate: DateTime(2020, 11, 20),
          //       onDateSelected: (date) => print(date),
          //       leftMargin: 10,
          //       dayColor: Colors.white,
          //       activeDayColor: Colors.white,
          //       activeBackgroundDayColor:
          //           AppColors.mainRed,
          //       locale: 'en_ISO',
          //     ),
          //   ),
          // ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                HomeTile(
                  tileModel: homeTilesList[0],
                ),
                SizedBox(height: 15),
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
                SizedBox(height: 15),
                ...homeTilesList.map((e) => GestureDetector(
                      onTap: () {
                        Get.to(DailyTabExtend());
                      },
                      child: Column(
                        children: [
                          HomeTile(tileModel: e),
                          SizedBox(height: 15),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
