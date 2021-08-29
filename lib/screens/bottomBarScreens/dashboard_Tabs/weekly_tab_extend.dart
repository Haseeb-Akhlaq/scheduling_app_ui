import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scheduling_app/styles/colors.dart';

class WeeklyTabExtend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.white),
                Text(
                  '2 - 8 August',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Time'),
                    SizedBox(width: 10),
                  ],
                ),
                Text('Mon'),
                //SizedBox(width: 15),
                Text('Tue'),
                // SizedBox(width: 10),
                Text('Wed'),
                //SizedBox(width: 10),
                Text('Thu'),
                // SizedBox(width: 15),
                Text('Fri'),
                // SizedBox(width: 15),
                Text('Sat'),
                //SizedBox(width: 15),
                Row(
                  children: [
                    Text('Sun'),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),
            color: AppColors.mainRed,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('8 AM'),
                    SizedBox(height: 10),
                    Text(
                      '9 AM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '10 AM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '11 AM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '12 AM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '1 PM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '2 PM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '3 PM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '4 PM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '5 PM',
                      style: TextStyle(
                        color: Color(0xff00CBFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '6 PM',
                    ),
                    SizedBox(height: 10),
                    Text('7 PM'),
                  ],
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Table(
                    border: TableBorder.all(width: 1, color: Colors.white),
                    children: [
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(''),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
