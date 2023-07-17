// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:table_calendar/table_calendar.dart';

class MyCalendarWidget extends StatefulWidget {
  const MyCalendarWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _MyCalendarWidgetState createState() => _MyCalendarWidgetState();
}

class _MyCalendarWidgetState extends State<MyCalendarWidget> {
  DateTime selectedDate = DateTime.now();
  DateTime? firstDate;

  DateTime getFirstDate() {
    DateTime currentDate = DateTime.now();

    if (currentDate.hour >= 18) {
      firstDate = currentDate.add(Duration(days: 8));
    } else {
      firstDate = currentDate.add(Duration(days: 7));
    }
    return firstDate!;
  }

  DateTime getEndDate() {
    return firstDate!.add(Duration(days: 100));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TableCalendar(
      calendarStyle:
          CalendarStyle(outsideDaysVisible: true, isTodayHighlighted: true),
      headerStyle: HeaderStyle(formatButtonVisible: false),
      firstDay: getFirstDate(),
      lastDay: getEndDate(),
      focusedDay: getFirstDate(),
      calendarFormat: CalendarFormat.month,
      onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
        setState(() {
          selectedDate = selectedDay;
          FFAppState().update(
            () {
              FFAppState().calenderSelected = selectedDate;
            },
          );
        });
      },
      selectedDayPredicate: (DateTime date) {
        if (date.weekday == DateTime.saturday ||
            date.weekday == DateTime.sunday) {
          return false;
        }
        return isSameDay(selectedDate, date);
      },
    ));
  }
}
