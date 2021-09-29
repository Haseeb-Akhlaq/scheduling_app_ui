import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/widgets/drawer.dart';

class ProfileScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(Duration(days: 7));

  var formattedStartDate = DateFormat().add_d().format(DateTime.now()).obs;
  var formattedEndDate = DateFormat()
      .add_d()
      .add_MMMM()
      .format(DateTime.now().add(Duration(days: 7)))
      .obs;

  changeDateNext() {
    startDate = startDate.add(Duration(days: 7));
    endDate = endDate.add(Duration(days: 7));
    formattedStartDate.value = DateFormat().add_d().format(startDate);
    formattedEndDate.value = DateFormat().add_d().add_MMMM().format(endDate);
  }

  changeDatePrevious() {
    startDate = startDate.subtract(Duration(days: 7));
    endDate = endDate.subtract(Duration(days: 7));
    formattedStartDate.value = DateFormat().add_d().format(startDate);
    formattedEndDate.value = DateFormat().add_d().add_MMMM().format(endDate);
  }

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          drawer: AppDrawer(),
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
                              GestureDetector(
                                onTap: () {
                                  _scaffoldKey.currentState!.openDrawer();
                                },
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
                                'Profile',
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
                    height: height * 0.86,
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/pic.jpg',
                              ),
                              radius: 45,
                            ),
                            SizedBox(height: height * 0.02),
                            Text(
                              'Nidhi Srivastava',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: height * 0.005),
                            Text(
                              '4 Year\'s of Service',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height: height * 0.03),
                            CredentialBlock(),
                            SizedBox(height: height * 0.02),
                            Experience(),
                            SizedBox(height: height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Gallery',
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: -0.3,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.025),
                            Gallery(),
                            SizedBox(height: height * 0.015),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Weekly Schedule',
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: -0.3,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.025),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    changeDatePrevious();
                                  },
                                  child: Icon(Icons.arrow_back_ios,
                                      color: Colors.white),
                                ),
                                Obx(
                                  () => Text(
                                    '$formattedStartDate - $formattedEndDate',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      changeDateNext();
                                    },
                                    child: Icon(Icons.arrow_forward_ios,
                                        color: Colors.white)),
                              ],
                            ),
                            SizedBox(height: height * 0.055),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.white.withOpacity(0.5),
                                        )),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Working Hours',
                                          style: TextStyle(
                                            color: AppColors.blue,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '8:00 AM - 8:00 PM',
                                          style: TextStyle(),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Break Time',
                                          style: TextStyle(
                                            color: AppColors.blue,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          '1:00 PM - 2:00 PM',
                                          style: TextStyle(),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Total Appointments',
                                              style: TextStyle(
                                                color: AppColors.blue,
                                              ),
                                            ),
                                            Text(
                                              '15',
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        AppointmentText(
                                          time: '08:00 AM - 09:00 AM',
                                          color: Colors.white,
                                          text: 'Booked',
                                        ),
                                        SizedBox(height: 5),
                                        AppointmentText(
                                          time: '10:00 AM - 11:00 AM',
                                          color: AppColors.blue,
                                          text: 'Open',
                                        ),
                                        SizedBox(height: 5),
                                        AppointmentText(
                                          time: '12:00 PM - 01:00 PM',
                                          color: Colors.white,
                                          text: 'Booked',
                                        ),
                                        SizedBox(height: 5),
                                        AppointmentText(
                                          time: '02:00 PM - 03:00 PM',
                                          color: AppColors.blue,
                                          text: 'Open',
                                        ),
                                        SizedBox(height: 5),
                                        AppointmentText(
                                          time: '04:00 PM - 05:00 PM',
                                          color: Colors.white,
                                          text: 'Booked',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              )
            ],
          )),
    );
  }
}

class AppointmentText extends StatelessWidget {
  final String? time;
  final Color? color;
  final String? text;
  const AppointmentText({
    Key? key,
    this.time,
    this.color,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          time!,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 1,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        SizedBox(width: 10),
        Text(
          text!,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}

class Gallery extends StatelessWidget {
  const Gallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 405,
      child: new StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) => new Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/gridView$index.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 1.8 : 1.3),
        mainAxisSpacing: 9.0,
        crossAxisSpacing: 9.0,
      ),
    );
  }
}

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Experience',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: -0.3,
              ),
            ),
            SvgPicture.asset(
              'assets/images/editIcon.svg',
              height: 20,
              width: 20,
            ),
          ],
        ),
        SizedBox(height: height * 0.015),
        Row(
          children: [
            Icon(
              Icons.developer_mode,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            Text(
              '   10 Year\'s Plus',
              style: TextStyle(
                fontSize: 12,
                letterSpacing: -0.3,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.01),
        Row(
          children: [
            Icon(
              Icons.military_tech,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            Text(
              '   Lisence in 2010',
              style: TextStyle(
                fontSize: 12,
                letterSpacing: -0.3,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.01),
        Row(
          children: [
            Icon(
              Icons.architecture,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            Text(
              '   Engineering in 2015',
              style: TextStyle(
                fontSize: 12,
                letterSpacing: -0.3,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CredentialBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Credentails Block',
              style: TextStyle(
                fontSize: 16,
                letterSpacing: -0.3,
              ),
            ),
            SvgPicture.asset(
              'assets/images/editIcon.svg',
              height: 20,
              width: 20,
            ),
          ],
        ),
        SizedBox(height: height * 0.015),
        Row(
          children: [
            Icon(
              Icons.apartment,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            Text(
              '   DigiMark Developers',
              style: TextStyle(
                fontSize: 12,
                letterSpacing: -0.3,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.01),
        Row(
          children: [
            Icon(
              Icons.developer_board,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            Text(
              '   Php Developer',
              style: TextStyle(
                fontSize: 12,
                letterSpacing: -0.3,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.01),
        Row(
          children: [
            Icon(
              Icons.access_time_outlined,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            Text(
              '   01 Jan 2015 - 01 Jan 2018',
              style: TextStyle(
                fontSize: 12,
                letterSpacing: -0.3,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
