import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/screens/profile_screen.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/widgets/drawer.dart';

class ShopsScreen2 extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List weekdays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  RxString day = 'Monday'.obs;

  nextDay() {
    day.value = weekdays[1];
  }

  previousDay() {
    day.value = weekdays[3];
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
                                'Shops',
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
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 6,
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isCollapsed: true,
                                  contentPadding: EdgeInsets.only(top: 5),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 25,
                                    minHeight: 35,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: AppColors.textLight,
                                  ),
                                  hintText: "    Search",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textLight,
                                    fontFamily: 'pop-light',
                                  ),
                                ),
                              ),
                            ),
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
                    height: height * 0.78,
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            width: double.infinity,
                            child: Text(
                              'Service Providers',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            color: AppColors.mainRed,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        previousDay();
                                      },
                                      child: Icon(Icons.arrow_back_ios,
                                          color: Colors.white),
                                    ),
                                    Obx(
                                      () => Text(
                                        day.value,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          nextDay();
                                        },
                                        child: Icon(Icons.arrow_forward_ios,
                                            color: Colors.white)),
                                  ],
                                ),
                                SizedBox(height: 30),
                                ShopFlashyContainer(mainColor: AppColors.green),
                                SizedBox(height: 30),
                                ShopFlashyContainer(
                                    mainColor: AppColors.mainRed),
                                SizedBox(height: 30),
                                ShopFlashyContainer(mainColor: AppColors.blue),
                                SizedBox(height: 30),
                                ShopFlashyContainer(mainColor: AppColors.green),
                                SizedBox(height: 30),
                                ShopFlashyContainer(
                                    mainColor: AppColors.mainRed),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Total No Of Slots for the shop'),
                                    Text(
                                      '05',
                                      style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                              ],
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

class ShopFlashyContainer extends StatefulWidget {
  final Color? mainColor;
  const ShopFlashyContainer({this.mainColor});

  @override
  State<ShopFlashyContainer> createState() => _ShopFlashyContainerState();
}

class _ShopFlashyContainerState extends State<ShopFlashyContainer> {
  bool showProfile = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        showProfile
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    showProfile = false;
                  });
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.mainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(ProfileScreen());
                            },
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/images/pic.jpg',
                              ),
                            ),
                          )),
                      SizedBox(height: 15),
                      Text(
                        'Adandio Mars',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '4 Year Of Service',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundTiles,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showProfile = true;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 200,
                        decoration: BoxDecoration(
                          color: widget.mainColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(35),
                            bottomRight: Radius.circular(2),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Jhone \n Doe',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '09  Open',
                              style: TextStyle(color: widget.mainColor),
                            ),
                            Text('10  Booked'),
                            Text('11  Booked'),
                            Text(
                              '12  Open',
                              style: TextStyle(color: widget.mainColor),
                            ),
                            Text('09  Open'),
                            Text('09  Open'),
                            Text('09  Open'),
                            Text(
                              '04  Open',
                              style: TextStyle(color: widget.mainColor),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: widget.mainColor,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
        SizedBox(height: 20),
        Divider(
          thickness: 1.5,
          color: Colors.white.withOpacity(0.5),
        )
      ],
    );
  }
}
