import 'package:flutter/material.dart';

import 'login.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var pass2;
    var pass1;
    var acc;
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Image.asset("images/Picture1.png", width: 200, height: 200),
              Center(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Text(
                  "Sign up please",
                  style: TextStyle(fontSize: 20.0, color: Colors.black38),
                ),
              )),
              SizedBox(height: 2),
              Center(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(80, 30, 80, 0),
                child: TextField(
                    style: TextStyle(fontSize: 14.0, color: Colors.black38),
                    decoration: InputDecoration(
                      labelText: 'username',
                      border: new OutlineInputBorder(
                        borderSide:
                            new BorderSide(width: 10, color: Colors.green[300]),
                      ),
                    )),
              )),
              Center(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(80, 30, 80, 0),
                child: TextField(
                    controller: pass1,
                    style: TextStyle(fontSize: 14.0, color: Colors.black38),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'password',
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(
                              width: 10, color: Colors.green[300])),
                    )),
              )),
              Center(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(80, 30, 80, 0),
                child: TextField(
                    controller: pass2,
                    style: TextStyle(fontSize: 14.0, color: Colors.black38),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'confirm password',
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(
                              width: 10, color: Colors.green[300])),
                    )),
              )),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(80, 30, 80, 0),
                  child: Center(
                      child: TextButton(
                    child: Text("Sign up"),
                    onPressed: () {
                      Navigator.pushNamed(context, "/sign-in");
                    },
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
