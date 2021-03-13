import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sign/login.dart';
import 'Sign/SignUp.dart';

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
