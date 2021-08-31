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
      child: Obx(() => Column(
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
              switchValue.isFalse
                  ? CardsWeeklyView(homeTilesList: homeTilesList)
                  : TableWeeklyView(),
            ],
          )),
    );
  }
}

class CardsWeeklyView extends StatelessWidget {
  const CardsWeeklyView({
    Key? key,
    required this.homeTilesList,
  }) : super(key: key);

  final List<TileModel> homeTilesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}

class TableWeeklyView extends StatelessWidget {
  const TableWeeklyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios, color: Colors.white),
              Text(
                '2 - 8 August',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Time'),
                  SizedBox(width: 10),
                ],
              ),
              Text('Mon'),
              //SizedBox(width: 15),
              Text('Tue'),
              // SizedBox(width: 10),
              Text('Wed'),
              //SizedBox(width: 10),
              Text('Thu'),
              // SizedBox(width: 15),
              Text('Fri'),
              // SizedBox(width: 15),
              Text('Sat'),
              //SizedBox(width: 15),
              Row(
                children: [
                  Text('Sun'),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
          color: AppColors.mainRed,
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('8 AM'),
                  SizedBox(height: 10),
                  Text(
                    '9 AM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '10 AM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '11 AM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '12 AM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1 PM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2 PM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3 PM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '4 PM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '5 PM',
                    style: TextStyle(
                      color: Color(0xff00CBFF),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '6 PM',
                  ),
                  SizedBox(height: 10),
                  Text('7 PM'),
                ],
              ),
              SizedBox(width: 10),
              Expanded(
                child: Table(
                  border: TableBorder.all(width: 1, color: Colors.white),
                  children: [
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            'J',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            'J',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            'D',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(''),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
