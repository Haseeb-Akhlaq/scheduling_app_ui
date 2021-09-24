import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/styles/colors.dart';

class ManageServiceProviderScreen extends StatefulWidget {
  @override
  State<ManageServiceProviderScreen> createState() =>
      _ManageServiceProviderScreenState();
}

class _ManageServiceProviderScreenState
    extends State<ManageServiceProviderScreen> {
  List serviceProviderLists = [
    true,
    false,
  ];

  var switchValue = false;
  var weeklySelected = true.obs;

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    return Scaffold(
      backgroundColor: Colors.black,
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
                    SizedBox(height: height * 0.04),
                    Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: height * 0.048,
                              width: height * 0.048,
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
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Text(
                            'Manage Service Provider',
                            style: TextStyle(
                              fontSize: 20,
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
              height: height * 0.85,
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
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 20, left: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Select All',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  Checkbox(
                                    activeColor: AppColors.green,
                                    value: switchValue,
                                    onChanged: (v) {
                                      switchValue = v!;
                                      if (v) {
                                        int length =
                                            serviceProviderLists.length;
                                        serviceProviderLists = [];
                                        for (int i = 0; i < length; i++) {
                                          serviceProviderLists.add(true);
                                        }
                                      } else {
                                        int length =
                                            serviceProviderLists.length;
                                        serviceProviderLists = [];
                                        for (int i = 0; i < length; i++) {
                                          serviceProviderLists.add(false);
                                        }
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          ...serviceProviderLists.map(
                            (e) => Column(
                              children: [
                                ShopsTile(isSelected: e),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Obx(() => Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        weeklySelected.value = true;
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              width: 1,
                                              color: weeklySelected.isTrue
                                                  ? AppColors.mainRed
                                                  : Colors.transparent,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Weekly',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        weeklySelected.value = false;
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              width: 1,
                                              color: weeklySelected.isFalse
                                                  ? AppColors.mainRed
                                                  : Colors.transparent,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          'Monthly',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(height: 15),
                    WeekName(weekName: 'Monday', color: AppColors.green),
                    ManageServiceProviderTiler(),
                    ManageServiceProviderTiler(),
                    SizedBox(height: 15),
                    WeekName(weekName: 'Tuesday', color: AppColors.mainRed),
                    ManageServiceProviderTiler(),
                    ManageServiceProviderTiler(),
                    SizedBox(height: 15),
                    WeekName(weekName: 'Wednesday', color: AppColors.blue),
                    ManageServiceProviderTiler(),
                    ManageServiceProviderTiler(),
                    SizedBox(height: 15),
                    WeekName(weekName: 'Thursday', color: AppColors.green),
                    ManageServiceProviderTiler(),
                    ManageServiceProviderTiler(),
                    SizedBox(height: 15),
                    WeekName(weekName: 'Friday', color: AppColors.mainRed),
                    ManageServiceProviderTiler(),
                    ManageServiceProviderTiler(),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WeekName extends StatelessWidget {
  final String? weekName;
  final Color? color;

  const WeekName({this.weekName, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      child: Text(
        weekName!,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      color: color,
    );
  }
}

class ManageServiceProviderTiler extends StatelessWidget {
  const ManageServiceProviderTiler({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.backgroundTiles,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              title: Text(
                'Jhone Doe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              subtitle: Text(
                '9 AM - 10 AM',
                style: TextStyle(
                  color: AppColors.textLight,
                  fontSize: 12,
                ),
              ),
              minLeadingWidth: 0,
              trailing: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Text(
                    'Confirmed',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

class ShopsTile extends StatefulWidget {
  bool? isSelected;
  ShopsTile({this.isSelected});

  @override
  State<ShopsTile> createState() => _ShopsTileState();
}

class _ShopsTileState extends State<ShopsTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundTiles,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5,
        ),
        child: ListTile(
          title: Text(
            'Schedule',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          subtitle: Text(
            'App',
            style: TextStyle(
              color: AppColors.textLight,
              fontSize: 12,
            ),
          ),
          trailing: Checkbox(
            value: widget.isSelected,
            activeColor: AppColors.green,
            onChanged: (v) {
              setState(() {
                widget.isSelected = v;
              });
            },
          ),
          minLeadingWidth: 0,
          leading: Image.asset(
            'assets/images/logo.png',
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }
}
