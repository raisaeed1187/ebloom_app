import 'dart:async';
import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Screens/loginScreen2.dart';
import 'package:ebloom_app/Screens/signupScreen2.dart';
import 'package:ebloom_app/Screens/welcomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ebloom_app/config/app_config.dart';
import 'login_screen.dart';

class AnimatedSplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<AnimatedSplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  //   images/splash_screen.jpeg

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Image.asset('images/ebloom_logo.png'),
        ),
      ),
    );
  }
}
