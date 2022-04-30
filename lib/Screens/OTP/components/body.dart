import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/OTP/components/inputform.dart';
import 'package:flutter_auth/Screens/OTP/components/timer.dart';
import 'package:flutter_auth/Screens/Signup/components/body.dart';
import 'package:flutter_auth/constants.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Center(
          child: Text(
            "Verification",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 50
            ),
          ),
        ),
        Text(
          "We send your code to: " + num,
          style: TextStyle(
            fontSize: 15,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        TimerApp(),
        SizedBox(height: 100),
        Inputform()
      ],
    );
  }
}
