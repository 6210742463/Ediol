import 'package:flutter/material.dart';
import 'package:project/calendar/calendar.dart';
import 'Sign/SignUp.dart';
import 'Sign/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
      routes: {
        '/sign-up': (context) => SignUpPage(),
        '/sign-in': (context) => LoginPage()
      },
    );
  }
}
