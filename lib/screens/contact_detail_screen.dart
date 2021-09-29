import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/models/service.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/widgets/drawer.dart';

import 'bottomBarScreens/new_appointment_screen.dart';

class ContactsDetailScreen extends StatefulWidget {
  @override
  State<ContactsDetailScreen> createState() => _ContactsDetailScreenState();
}

class _ContactsDetailScreenState extends State<ContactsDetailScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var sliderValue = 10.0.obs;
  var weekPopUp = '2 Weeks'.obs;

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          drawer: AppDrawer(),
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        color: AppColors.mainRed,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                HeaderSection(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next Appointment :',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MONDAY, 10 O\'Clock   ',
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.green,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(NewAppointmentScreen());
                          },
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 18,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Services',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ServicesContainer2(
                      service:
                          Service(time: '45', serviceName: 'Dummy Service'),
                    ),
                    SizedBox(width: 10),
                    ServicesContainer2(
                      service:
                          Service(time: '25', serviceName: 'Dummy Service'),
                    ),
                    SizedBox(width: 10),
                    ServicesContainer2(
                      service:
                          Service(time: '15', serviceName: 'Dummy Service'),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Time Preferences',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeWidget(
                      height: height,
                      isSelected: false,
                      time: '10:00 AM',
                    ),
                    TimeWidget(
                      height: height,
                      isSelected: true,
                      time: '10:30 AM',
                    ),
                    TimeWidget(
                      height: height,
                      isSelected: false,
                      time: '11:00 AM',
                    )
                  ],
                ),
                SizedBox(height: 10),
                Obx(
                  () => SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 1.5,
                    ),
                    child: Slider(
                      label: '${sliderValue.value.toInt()}',
                      value: sliderValue.value,
                      thumbColor: AppColors.mainRed,
                      activeColor: AppColors.mainRed,
                      inactiveColor: Colors.white.withOpacity(0.1),
                      onChanged: (v) {
                        sliderValue.value = v;
                      },
                      min: 0,
                      max: 100,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundTiles,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                      title: Text(
                        'Frequency',
                        style: TextStyle(
                          color: AppColors.mainRed,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Obx(
                        () => Text(
                          'Last ${weekPopUp.value}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      trailing: PopupMenuButton(
                          child: Icon(
                            Icons.more_vert,
                            color: AppColors.mainRed,
                          ),
                          onSelected: (v) {
                            if (v == 1) {
                              weekPopUp.value = '1 Week';
                            }
                            if (v == 2) {
                              weekPopUp.value = '2 Weeks';
                            }
                            if (v == 3) {
                              weekPopUp.value = '3 Weeks';
                            }
                            if (v == 4) {
                              weekPopUp.value = '1 Month';
                            }
                          },
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: Text("1 Week"),
                                  value: 1,
                                ),
                                PopupMenuItem(
                                  child: Text("2 Weeks"),
                                  value: 2,
                                ),
                                PopupMenuItem(
                                  child: Text("3 Weeks"),
                                  value: 3,
                                ),
                                PopupMenuItem(
                                  child: Text("1 Month"),
                                  value: 4,
                                ),
                              ])),
                ),
                SizedBox(height: height * 0.03),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Notes',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
              ]),
            ),
          )),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                  )),
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/pic.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: -2,
              right: -10,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.image_outlined,
                  color: AppColors.mainRed,
                  size: 18,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: height * 0.02),
        Text(
          'Adandio Mars',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: height * 0.005),
        Text(
          'Age : 27',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(height: height * 0.005),
        Text(
          '+1 000 000 00 0',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(height: height * 0.02),
        Container(
          alignment: Alignment.center,
          width: 150,
          decoration: BoxDecoration(
              color: AppColors.mainRed, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 10,
            ),
            child: Text(
              'Message',
              style: TextStyle(fontSize: height * 0.020),
            ),
          ),
        ),
        SizedBox(height: height * 0.02),
        Divider(
            height: 30, thickness: 0.8, color: Colors.white.withOpacity(0.5)),
      ],
    );
  }
}
