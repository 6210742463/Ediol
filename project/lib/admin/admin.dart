import 'package:flutter/material.dart';

class admin extends StatefulWidget {
  @override
  _adminState createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
       child: Padding(
         padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "E-DIOL",
                    style: TextStyle(fontSize: 24)
                    ,),
                  Image.asset('images/1.png',width: 100)
                ],
              ),
            ),
            Container(
              height: 500,
              color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                      onPressed: () {},
                      child: Text('1'),
                      color: Colors.greenAccent,
                    ),
                  RaisedButton(
                      onPressed: () {},
                      child: Text('2'),
                      color: Colors.blue,
                    ),
                  RaisedButton(
                      onPressed: () {},
                      child: Text('3'),
                      color: Colors.red,
                    ),
                ],
              ),
            ),
           ],
         ),
       ),  
      )
    );
  }
}