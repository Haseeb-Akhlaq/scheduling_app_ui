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
          appointmentTextStyle: TextStyle(fontSize: 18),
          dataSource: _getCalendarDataSource(),
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
              // backgroundColor: AppColors.background,
              // trailingDatesBackgroundColor: AppColors.background,
              leadingDatesBackgroundColor: AppColors.background,
              //todayBackgroundColor: AppColors.mainRed,
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

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];
  appointments.add(
    Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(minutes: 10)),
      subject: 'Meeting',
      color: Colors.blue,
      startTimeZone: '',
      endTimeZone: '',
    ),
  );

  appointments.add(
    Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(minutes: 10)),
      subject: 'Meeting',
      color: Colors.purple,
      startTimeZone: '',
      endTimeZone: '',
    ),
  );

  appointments.add(
    Appointment(
      startTime: DateTime.now().add(Duration(days: 1)),
      endTime: DateTime.now().add(Duration(days: 1, minutes: 10)),
      subject: 'Meeting',
      color: Colors.yellow,
      startTimeZone: '',
      endTimeZone: '',
    ),
  );

  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
