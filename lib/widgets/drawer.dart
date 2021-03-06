import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/screens/bottomBarScreens/service_provider_screen.dart';
import 'package:scheduling_app/screens/bottomBarScreens/shops_screen.dart';
import 'package:scheduling_app/screens/manage_service_provider_screen.dart';
import 'package:scheduling_app/screens/notifications_screen.dart';
import 'package:scheduling_app/screens/profile_screen.dart';
import 'package:scheduling_app/styles/colors.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: AppColors.background,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: AppColors.background,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(0.0),
                  children: [
                    ListTile(
                      minLeadingWidth: 0,
                      leading: FittedBox(
                        fit: BoxFit.cover,
                        child: Icon(
                          Icons.shop,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      title: Text(
                        'Shops',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                      onTap: () {
                        Get.to(() => ShopsScreen());
                      },
                    ),
                    ListTile(
                      minLeadingWidth: 0,
                      leading: FittedBox(
                        fit: BoxFit.cover,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      title: Text(
                        'Service Provider',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                      onTap: () {
                        Get.to(() => ServiceProviderScreen());
                      },
                    ),
                    ListTile(
                      minLeadingWidth: 0,
                      leading: FittedBox(
                        fit: BoxFit.cover,
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      title: Text(
                        'Manage Service Provider',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                      onTap: () {
                        Get.to(() => ManageServiceProviderScreen());
                      },
                    ),
                    ListTile(
                      minLeadingWidth: 0,
                      leading: FittedBox(
                        fit: BoxFit.cover,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      title: Text(
                        'Notifications',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                      onTap: () {
                        Get.to(() => NotificationsScreen());
                      },
                    ),
                    ListTile(
                      minLeadingWidth: 0,
                      leading: FittedBox(
                        fit: BoxFit.cover,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      title: Text(
                        'Profile',
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                      onTap: () {
                        Get.to(() => ProfileScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
