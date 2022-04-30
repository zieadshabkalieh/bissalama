import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/body.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Scaffold(
        body: Body(),
      ),
      nextScreen: SignUpScreen(),
      duration: 3000,
      splashIconSize: 1000000,
    );
  }
}
