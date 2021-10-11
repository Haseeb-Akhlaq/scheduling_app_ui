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
                                'Create Schedule',
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
                  height: height * 0.87,
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
                              'Date',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {
                                showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now()
                                        .subtract(Duration(days: 365)),
                                    lastDate: DateTime.now()
                                        .add(Duration(days: 365)));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTiles,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_today_outlined,
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            size: 22,
                                          ),
                                          Text(
                                            '  01 Jan 2021',
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
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
                              'Start Time',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTiles,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time_outlined,
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            size: 22,
                                          ),
                                          Text(
                                            '  10:00 AM',
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
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
                              'End Time',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 15),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTiles,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time_outlined,
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            size: 22,
                                          ),
                                          Text(
                                            '  10:00 AM',
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.035),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Add Break'),
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
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.035),
                        Break(),
                        SizedBox(height: height * 0.035),
                        Break(),
                        SizedBox(height: height * 0.035),
                        Frequency(),
                        SizedBox(height: height * 0.035),
                        CustomFrequency(),
                        SizedBox(height: height * 0.045),
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

class Frequency extends StatelessWidget {
  RxBool expanded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.backgroundTiles,
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
        ),
      ),
      child: ExpansionTile(
        onExpansionChanged: (v) {
          expanded.value = v;
        },
        collapsedTextColor: Colors.white,
        trailing: Obx(
          () => Icon(
            expanded.isTrue ? Icons.arrow_upward : Icons.arrow_downward_sharp,
            color:
                expanded.isTrue ? Colors.white : Colors.white.withOpacity(0.5),
          ),
        ),
        title: Obx(
          () => Row(
            children: [
              Icon(
                Icons.timeline,
                color: expanded.isTrue
                    ? Colors.white
                    : Colors.white.withOpacity(0.5),
                size: 22,
              ),
              Text(
                '  Weekly',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: expanded.isTrue
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                  height: 30,
                ),
                Text(
                  'Weekly',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                  height: 30,
                ),
                Text(
                  'Monthly',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                  height: 30,
                ),
                Text(
                  'Yearly',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomFrequency extends StatelessWidget {
  RxBool expanded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.backgroundTiles,
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
        ),
      ),
      child: ExpansionTile(
        onExpansionChanged: (v) {
          expanded.value = v;
        },
        collapsedTextColor: Colors.white,
        trailing: Obx(
          () => Icon(
            expanded.isTrue ? Icons.arrow_upward : Icons.arrow_downward_sharp,
            color:
                expanded.isTrue ? Colors.white : Colors.white.withOpacity(0.5),
          ),
        ),
        title: Obx(
          () => Text(
            '  Custom',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: expanded.isTrue
                  ? Colors.white
                  : Colors.white.withOpacity(0.5),
            ),
          ),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.white.withOpacity(0.3),
                  height: 30,
                ),
                Text(
                  'Weekly',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Break extends StatelessWidget {
  RxBool expanded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Break 1'),
              Icon(
                Icons.clear,
                color: AppColors.mainRed,
                size: 20,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.backgroundTiles,
              border: Border.all(
                color: Colors.white.withOpacity(0.1),
              ),
            ),
            child: ExpansionTile(
              onExpansionChanged: (v) {
                expanded.value = v;
              },
              collapsedTextColor: Colors.white,
              trailing: Obx(
                () => Icon(
                  expanded.isTrue
                      ? Icons.arrow_upward
                      : Icons.arrow_downward_sharp,
                  color: expanded.isTrue
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
              ),
              title: Obx(
                () => Row(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      color: expanded.isTrue
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                      size: 22,
                    ),
                    Text(
                      '  First',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: expanded.isTrue
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white.withOpacity(0.3),
                        height: 30,
                      ),
                      Text(
                        'Second',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white.withOpacity(0.3),
                        height: 30,
                      ),
                      Text(
                        'Third',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white.withOpacity(0.3),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Break Start'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.backgroundTiles,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: Colors.white.withOpacity(0.5),
                              size: 20,
                            ),
                            Text('  10:00 AM'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Break End'),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.backgroundTiles,
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: Colors.white.withOpacity(0.5),
                              size: 20,
                            ),
                            Text('  10:00 AM'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
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
