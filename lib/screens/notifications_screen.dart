import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/styles/colors.dart';

class NotificationsScreen extends StatelessWidget {
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
                            'Notifications',
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
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      NotificationTile(seen: false),
                      SizedBox(height: 4),
                      NotificationTile(seen: true),
                      SizedBox(height: 4),
                      NotificationTile(seen: true),
                      SizedBox(height: 4),
                      NotificationTile(seen: true),
                      SizedBox(height: 4),
                      NotificationTile(seen: true),
                      SizedBox(height: 4),
                      NotificationTile(seen: true),
                      SizedBox(height: 4),
                      NotificationTile(seen: true),
                      SizedBox(height: 4),
                      NotificationTile(seen: true),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final bool? seen;

  const NotificationTile({Key? key, this.seen}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: seen == true ? AppColors.backgroundTiles : Color(0xff707070),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  seen == true
                      ? SvgPicture.asset('assets/images/notificationSeen.svg')
                      : SvgPicture.asset(
                          'assets/images/notification_unseen.svg'),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today, 09:47',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'How do I start doing yoga at \nDiskon s/d 50% di Local stay untuk',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text(
              seen == true ? 'see ' : '2 mints',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
