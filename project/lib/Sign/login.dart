import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.asset(
                "images/Picture1.png",
                width: 200,
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 90, 50, 0),
                child: Center(
                    child: Text(
                  "Welcome to Ediot",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Lalezar',
                      fontWeight: FontWeight.w400,
                      color: Colors.lightGreen[200]),
                )),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: Center(
                    child: Text(
                      "Sign in to continue",
                      style: TextStyle(
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey[300]),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 90, 50, 0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: "Username",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(60, 60, 60, 0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.lightGreen[200])),
                    color: Colors.lightGreen[200],
                    onPressed: () {
                      print("login button");
                    },
                    child: Text("SIGN IN"),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                child: TextButton(
                  onPressed: () {
                    print("sign up button");
                  },
                  child: Text("SIGN UP FOR AN ACCOUNT",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Lalezar',
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey[300])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
