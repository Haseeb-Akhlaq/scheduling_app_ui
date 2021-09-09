import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:scheduling_app/screens/bottomBarScreens/create_work_space_screen.dart';
import 'package:scheduling_app/screens/bottomBarScreens/new_admin_screen.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/widgets/drawer.dart';

class ShopsScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.black,
          drawer: AppDrawer(),
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
                                    size: 35,
                                  ),
                                ),
                              ),
                              Text(
                                'Shops',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 35,
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
                    height: height * 0.85,
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        )),
                    child: Column(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showOtpDialog(context, width, height);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundTiles,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 10,
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
                                    trailing: Icon(
                                      Icons.more_horiz,
                                      color: AppColors.textLight,
                                      size: 35,
                                    ),
                                    minLeadingWidth: 0,
                                    leading: Image.asset(
                                      'assets/images/logo.png',
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                        Divider(
                          thickness: 0.5,
                          color: AppColors.textLight,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(CreateWorkSpaceScreen());
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.white,
                                    ),
                                    Text('    Add a Workspace')
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  Get.to(NewAdminScreen());
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                    ),
                                    Text('    Preferences')
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Icon(
                                    Icons.help_outline,
                                    color: Colors.white,
                                  ),
                                  Text('    Help')
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          )),
    );
  }
}

showOtpDialog(BuildContext context, width, height) {
  Get.defaultDialog(
    title: '',
    content: Container(
      height: 390,
      child: Column(
        children: [
          Image.asset('assets/images/verificationDialog.png'),
          SizedBox(height: 20),
          Text(
            'Verification',
            style: TextStyle(
              color: AppColors.mainRed,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Please Enter your OTP code sent\n to your number',
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 12),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                borderWidth: 2,
                fieldHeight: 45,
                fieldWidth: 45,
                activeColor: Color(0xFFe7e7e7),
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                inactiveColor: Color(0xFFe7e7e7),
                selectedColor: Color(0xFFe7e7e7),
                selectedFillColor: Color(0xFFe7e7e7),
              ),
              animationType: AnimationType.scale,
              cursorColor: Color(0xFF398AE5),
              textStyle: TextStyle(
                fontSize: 18,
              ),
              enableActiveFill: true,
              keyboardType: TextInputType.number,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Didnt get code?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 12),
              ),
              Text(
                ' Resend OTP',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.mainRed, fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              alignment: Alignment.center,
              width: width * 0.4,
              decoration: BoxDecoration(
                  color: AppColors.mainRed,
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                child: Text(
                  'Verify',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
