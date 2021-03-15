import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  CalendarPage({Key key}) : super(key: key);

  @override
  _CalendarPage createState() => _CalendarPage();
}

class _CalendarPage extends State<CalendarPage> {
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 250, 10),
                child: IconButton(
                  onPressed: () {
                    print("back page");
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black45,
                  iconSize: 40,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
                child: IconButton(
                  onPressed: () {
                    print("profile");
                  },
                  icon: Icon(Icons.account_circle_outlined),
                  color: Colors.black26,
                  iconSize: 60,
                ),
              )
            ],
          ),
          TableCalendar(
            calendarController: _calendarController,
          )
        ],
      ),
    ));
  }
}
//test
