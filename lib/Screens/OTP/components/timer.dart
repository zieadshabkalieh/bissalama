import 'dart:async';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class TimerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyTimer();
  }
}

class MyTimer extends StatefulWidget {
  MyTimer({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyTimer> {
  int seconds = 30;
  Timer _timer;

  void _startTimer() {
    // seconds = 30;
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _startTimer();
    return Center(
      child: Text(
        'This code will expired in: 00:00:$seconds',
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 15,

        ),
      ),
    );
  }
}
