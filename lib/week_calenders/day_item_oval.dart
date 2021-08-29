import 'package:flutter/material.dart';
import 'package:scheduling_app/styles/colors.dart';

/// Creates a Widget representing the day.
class DayItemOval extends StatelessWidget {
  final int dayNumber;
  final String shortName;
  final bool isSelected;
  final Function onTap;
  final Color? dayColor;
  final Color? activeDayColor;
  final Color? activeDayBackgroundColor;
  final bool available;
  final Color? dotsColor;
  final Color? dayNameColor;

  const DayItemOval({
    Key? key,
    required this.dayNumber,
    required this.shortName,
    required this.onTap,
    this.isSelected = false,
    this.dayColor,
    this.activeDayColor,
    this.activeDayBackgroundColor,
    this.available = true,
    this.dotsColor,
    this.dayNameColor,
  }) : super(key: key);

  final double height = 90.0;
  final double width = 55.0;

  ///? I united both widgets to increase the touch target of non selected days by using a transparent box decorator.
  ///? Now if the user click close to the number but not straight on top it will still select the date. (ONLY INFORMATION - ERASE)
  _buildDay(BuildContext context) {
    final textStyle = TextStyle(
        color: available
            ? dayColor ?? Theme.of(context).accentColor
            : dayColor?.withOpacity(0.5) ??
                Theme.of(context).accentColor.withOpacity(0.5),
        fontSize: 16,
        fontWeight: FontWeight.normal);
    final selectedStyle = TextStyle(
      color: activeDayColor ?? Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      height: 0.8,
    );

    return GestureDetector(
      onTap: available ? onTap as void Function()? : null,
      child: Container(
        decoration: isSelected
            ? BoxDecoration(
                color:
                    activeDayBackgroundColor ?? Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(55.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              )
            : BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12.0),
              ),
        height: height,
        width: width,
        child: Column(
          children: <Widget>[
            SizedBox(height: 14),
            Text(
              shortName,
              style: TextStyle(
                color: dayNameColor ?? activeDayColor ?? Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 14),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.background,
                border: Border.all(
                  color: Color(0xff111111),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 10, left: 10, right: 10),
                child: Text(
                  dayNumber.toString(),
                  style: TextStyle(
                    color: activeDayColor ?? Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 0.8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildDay(context);
  }
}
