import 'package:ebloom_app/Screens/orderScreen2.dart';
import 'package:ebloom_app/Screens/splash_screen.dart';
import 'package:ebloom_app/Screens/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ebloom_app/Screens/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'eBloom',
      theme: ThemeData(

        primarySwatch: Colors.grey,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,

        //this is what you want
        accentColor: Colors.grey[400],
        accentColorBrightness: Brightness.light,
        fontFamily: 'Montserrat-M',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(),
      //home: TestApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
