import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/screens/registration_screen_2.dart';
import 'package:scheduling_app/styles/colors.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    var checkValue = true.obs;

    return SafeArea(
      child: Scaffold(
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
                        SizedBox(height: height * 0.02),
                        Container(
                          child: Row(
                            children: [
                              Container(
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
                              SizedBox(width: width * 0.19),
                              Text(
                                'Registration',
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
                  height: height * 0.8,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.04),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.mainRed,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/man.svg',
                                    height: 70,
                                  ),
                                  SizedBox(height: 10),
                                  Text('Personal')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.04),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email'),
                              SizedBox(height: height * 0.005),
                              TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  contentPadding: EdgeInsets.only(top: 5),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.2),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.5),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.5),
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 25,
                                    minHeight: 35,
                                  ),
                                  prefixIcon: Transform.scale(
                                    scale: 0.8,
                                    child: SvgPicture.asset(
                                      'assets/images/email.svg',
                                    ),
                                  ),
                                  hintText: "    Jhonedoe@gmail.com",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textLight,
                                    fontFamily: 'pop-light',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.04),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('User Name'),
                              SizedBox(height: height * 0.005),
                              TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  contentPadding: EdgeInsets.only(top: 5),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.2),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.5),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.5),
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 25,
                                    minHeight: 35,
                                  ),
                                  prefixIcon: Transform.scale(
                                    scale: 0.7,
                                    child: SvgPicture.asset(
                                      'assets/images/user.svg',
                                    ),
                                  ),
                                  hintText: "    Jhone Doe",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textLight,
                                    fontFamily: 'pop-light',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.04),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Password'),
                              SizedBox(height: height * 0.005),
                              TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                obscureText: true,
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  contentPadding: EdgeInsets.only(top: 15),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.2),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.5),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.5),
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 25,
                                    minHeight: 35,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.visibility_outlined,
                                    color: AppColors.textLight,
                                    size: 20,
                                  ),
                                  prefixIcon: Transform.scale(
                                    scale: 0.6,
                                    child: SvgPicture.asset(
                                      'assets/images/lock.svg',
                                    ),
                                  ),
                                  hintText: "    ******************",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textLight,
                                    fontFamily: 'pop-light',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.04),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Confirm Password'),
                              SizedBox(height: height * 0.005),
                              TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                obscureText: true,
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  contentPadding: EdgeInsets.only(top: 15),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.2),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.5),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textLight, width: 0.5),
                                  ),
                                  prefixIconConstraints: BoxConstraints(
                                    minWidth: 25,
                                    minHeight: 35,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.visibility_outlined,
                                    color: AppColors.textLight,
                                    size: 20,
                                  ),
                                  prefixIcon: Transform.scale(
                                    scale: 0.6,
                                    child: SvgPicture.asset(
                                      'assets/images/lock.svg',
                                    ),
                                  ),
                                  hintText: "    ******************",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.textLight,
                                    fontFamily: 'pop-light',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.04),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Obx(
                                () => Checkbox(
                                  activeColor: AppColors.mainRed,
                                  value: checkValue.value,
                                  onChanged: (v) {
                                    checkValue.value = v!;
                                  },
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'By creating an account, you agreed our',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: AppColors.textLight,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Terms & Conditions',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: height * 0.04),
                          GestureDetector(
                            onTap: () {
                              Get.to(RegistrationScreen2());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.mainRed,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 10,
                                ),
                                child: Text('CONTINUE'),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.04),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
