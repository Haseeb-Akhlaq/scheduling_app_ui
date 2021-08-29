import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/models/tileModel.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/widgets/hometile.dart';

import 'daily_tab_extend.dart';

class WeeklyTab extends StatelessWidget {
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
        status: 'Confirmed',
        pic: 'assets/images/girl.png',
        statusColor: Color(0xff1ED760),
        swipeFromRight: false,
        swipeText: 'View',
        statusTextColor: Colors.black,
        stretchExtent: 0.25,
      ),
      TileModel(
        name: 'Jhone Doe',
        time: '4 PM - 5 PM',
        status: 'Not Confirmed',
        pic: 'assets/images/girl.png',
        statusColor: AppColors.mainRed,
        swipeFromRight: true,
        swipeText: 'View',
        statusTextColor: Colors.white,
        stretchExtent: 0.25,
      )
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Text(
              'Monday',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            color: AppColors.mainRed,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Text(
              'Tuesday',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            color: AppColors.mainRed,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Text(
              'Wednesday',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            color: AppColors.mainRed,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Text(
              'Thursday',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            color: AppColors.mainRed,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Text(
              'Friday',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            color: AppColors.mainRed,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Text(
              'Saturday',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            color: AppColors.mainRed,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Text(
              'Sunday',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            color: AppColors.mainRed,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
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
