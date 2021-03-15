import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(backgroundColor: Colors.lightBlue, actions: <Widget>[
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, 0, MediaQuery.of(context).size.width - 125, 0),
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
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        print("profile");
                      },
                      icon: Icon(Icons.account_circle_outlined),
                      color: Colors.black26,
                      iconSize: 40,
                    ),
                  )
                ],
              ),
            ],
          )
        ]),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableCalendar(
                calendarController: _calendarController,
                locale: 'pl_PL',
              )
            ],
          ),
        ));
  }
}
