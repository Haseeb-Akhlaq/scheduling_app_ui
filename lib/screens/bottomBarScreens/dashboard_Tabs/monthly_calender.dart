import 'package:flutter/material.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MonthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: SfCalendar(
          todayHighlightColor: AppColors.mainRed,
          showNavigationArrow: true,
          viewHeaderStyle: ViewHeaderStyle(
              dayTextStyle: TextStyle(
            color: Colors.white,
          )),
          weekNumberStyle: WeekNumberStyle(
            backgroundColor: Colors.white,
          ),
          headerStyle: CalendarHeaderStyle(
              textStyle: TextStyle(
            color: AppColors.mainRed,
            fontSize: 18,
          )),
          view: CalendarView.month,
          backgroundColor: AppColors.background,
          cellBorderColor: AppColors.background,
          monthViewSettings: MonthViewSettings(
            monthCellStyle: MonthCellStyle(
              backgroundColor: AppColors.background,
              trailingDatesBackgroundColor: AppColors.background,
              leadingDatesBackgroundColor: AppColors.background,
              todayBackgroundColor: AppColors.mainRed,
              textStyle: TextStyle(fontSize: 12, fontFamily: 'Arial'),
              todayTextStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial'),
              trailingDatesTextStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  fontFamily: 'Arial'),
              leadingDatesTextStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  fontFamily: 'Arial'),
            ),
          ),
        ),
      ),
    );
  }
}
