import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scheduling_app/screens/contact_detail_screen.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:scheduling_app/widgets/drawer.dart';

class ContactsScreen extends StatefulWidget {
  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List contacts = [
    'Adandio',
    'Atta Halilintar',
    'Bruno Mars',
    'Celly Allison',
    'David Gadgetin',
    'Debby Claudia',
    'Alex',
  ];

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;

    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          drawer: AppDrawer(),
          backgroundColor: Colors.black,
          body: Column(
            children: [
              SizedBox(height: height * 0.02),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.menu,
                        color: Colors.transparent,
                        size: 32,
                      ),
                    ),
                    Text(
                      'Contacts',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'pop-Bold',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.add,
                        color: AppColors.mainRed,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundTiles,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ContactEntry(name: contacts[index]);
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                            height: 30,
                            thickness: 0.5,
                            color: Colors.white.withOpacity(0.5));
                      },
                      itemCount: contacts.length),
                ),
              )
            ],
          )),
    );
  }
}

class ContactEntry extends StatelessWidget {
  final String? name;

  const ContactEntry({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ContactsDetailScreen());
      },
      child: Container(
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/pic.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20),
            Text(
              name!,
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'pop-medium',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
