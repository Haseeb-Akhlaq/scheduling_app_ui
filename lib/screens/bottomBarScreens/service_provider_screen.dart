import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/models/serviceProviderModel.dart';
import 'package:scheduling_app/screens/bottomBarScreens/services_screen.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/widgets/drawer.dart';

class ServiceProviderScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    List<ServiceProvider> services = [
      ServiceProvider(name: 'Dudung Sokmati', pic: 'assets/images/girl.png'),
      ServiceProvider(name: 'Dudung Sokmati', pic: 'assets/images/girl.png'),
      ServiceProvider(name: 'Dudung Sokmati', pic: 'assets/images/girl.png'),
      ServiceProvider(name: 'Dudung Sokmati', pic: 'assets/images/girl.png'),
      ServiceProvider(name: 'Dudung Sokmati', pic: 'assets/images/girl.png'),
      ServiceProvider(name: 'Dudung Sokmati', pic: 'assets/images/girl.png'),
    ];

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
                                'Service Provider',
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
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Get.to(ServicesScreen());
                                    },
                                    child: ServiceProviderTile(
                                      serviceProvider: services[index],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: 10,
                                  );
                                },
                                itemCount: services.length),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          )),
    );
  }
}

class ServiceProviderTile extends StatelessWidget {
  final ServiceProvider? serviceProvider;

  const ServiceProviderTile({this.serviceProvider});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.backgroundTiles,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: ListTile(
            title: Text(
              serviceProvider!.name!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            subtitle: Text(
              'Service Provider',
              style: TextStyle(
                color: AppColors.textLight,
                fontSize: 12,
              ),
            ),
            minLeadingWidth: 0,
            leading: CircleAvatar(
              radius: 29,
              backgroundImage: AssetImage(
                serviceProvider!.pic!,
              ),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                  color: AppColors.mainRed,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Choose',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
