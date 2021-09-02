import 'package:flutter/material.dart';
import 'package:scheduling_app/styles/colors.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MonthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SfCalendar(
        appointmentTextStyle: TextStyle(fontSize: 18),
        dataSource: MeetingDataSource(_getDataSource()),
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
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          appointmentDisplayCount: 1,
          monthCellStyle: MonthCellStyle(
            backgroundColor: AppColors.background,
            // trailingDatesBackgroundColor: AppColors.mainRed,
            // leadingDatesBackgroundColor: AppColors.background,
            //todayBackgroundColor: AppColors.mainRed,
            textStyle: TextStyle(fontSize: 12, fontFamily: 'Arial'),
            todayTextStyle: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Arial'),
            trailingDatesTextStyle: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 12, fontFamily: 'Arial'),
            leadingDatesTextStyle: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 12, fontFamily: 'Arial'),
          ),
        ),
      ),
    );
  }
}

// _AppointmentDataSource _getCalendarDataSource() {
//   List<Appointment> appointments = <Appointment>[];
//   appointments.add(
//     Appointment(
//       startTime: DateTime.now(),
//       endTime: DateTime.now().add(Duration(minutes: 10)),
//       subject: 'Meeting',
//       color: Colors.blue,
//       startTimeZone: '',
//       endTimeZone: '',
//     ),
//   );
//
//   appointments.add(
//     Appointment(
//       startTime: DateTime.now(),
//       endTime: DateTime.now().add(Duration(minutes: 10)),
//       subject: 'Meeting',
//       color: Colors.purple,
//       startTimeZone: '',
//       endTimeZone: '',
//     ),
//   );
//
//   appointments.add(
//     Appointment(
//       startTime: DateTime.now().add(Duration(days: 1)),
//       endTime: DateTime.now().add(Duration(days: 1, minutes: 10)),
//       subject: 'Meeting',
//       color: Colors.yellow,
//       startTimeZone: '',
//       endTimeZone: '',
//     ),
//   );
//
//   return _AppointmentDataSource(appointments);
// }
//
// class _AppointmentDataSource extends CalendarDataSource {
//   _AppointmentDataSource(List<Appointment> source) {
//     appointments = source;
//   }
// }

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(Meeting('   1', startTime, endTime, Colors.transparent, false));

  meetings.add(Meeting(
      '    2',
      DateTime.now().add(Duration(days: 1)),
      DateTime.now().add(Duration(days: 1, hours: 3)),
      Colors.transparent,
      false));

  meetings.add(Meeting('    3', DateTime.now().add(Duration(days: 5)),
      DateTime.now().add(Duration(days: 5)), Colors.transparent, false));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
