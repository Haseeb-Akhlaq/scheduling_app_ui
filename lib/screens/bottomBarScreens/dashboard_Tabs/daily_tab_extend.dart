import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class DailyTabExtend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SfCalendar(
          view: CalendarView.week,
          showNavigationArrow: true,
        ),
      ),
    );
  }
}
