import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/models/serviceProviderModel.dart';
import 'package:scheduling_app/styles/colors.dart';

class AddServiceProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ServiceProvider> services = [
      ServiceProvider(
          name: 'Jhone Doe',
          pic: 'assets/images/girl2.png',
          highLighted: false),
      ServiceProvider(
          name: 'Jhone Doe', pic: 'assets/images/girl2.png', highLighted: true),
      ServiceProvider(
          name: 'Jhone Doe',
          pic: 'assets/images/girl2.png',
          highLighted: false),
      ServiceProvider(
          name: 'Jhone Doe',
          pic: 'assets/images/girl2.png',
          highLighted: false),
      ServiceProvider(
          name: 'Dudung Sokmati',
          pic: 'assets/images/girl2.png',
          highLighted: false),
      ServiceProvider(
          name: 'Dudung Sokmati',
          pic: 'assets/images/girl2.png',
          highLighted: false),
    ];

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
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: height * 0.042,
                                  width: height * 0.042,
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
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.1),
                              Text(
                                'Add Service Provider',
                                style: TextStyle(
                                  fontSize: 18,
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
                  height: height * 0.83,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 20, 0),
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: ServiceProviderTile(
                              serviceProvider: services[index],
                            ),
                          );
                        },
                        itemCount: services.length),
                  ),
                ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: ListTile(
        title: Text(
          serviceProvider!.name!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        subtitle: Text(
          'Shop Owner',
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
        trailing: serviceProvider!.highLighted!
            ? Container(
                decoration: BoxDecoration(
                  color: AppColors.mainRed,
                  border: Border.all(
                    color: AppColors.mainRed,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: AppColors.mainRed,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.5,
                      color: AppColors.background,
                    ),
                  ),
                ),
              )
            : Container(
                width: 0,
              ),
      ),
    );
  }
}
