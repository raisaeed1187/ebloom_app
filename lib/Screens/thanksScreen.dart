import 'package:ebloom_app/Screens/mainHomepage.dart';
import 'package:ebloom_app/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Config/app_config.dart';
import 'package:flutter/cupertino.dart';

class ThanksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Image.asset('images/ebloom_logo.png'),
              ),

              SizedBox(height: _screenSize.height * 0.04,),

              Text(
                'THANK YOU!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32.0,
                  color: kDarkColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: _screenSize.height * 0.03,),
              Icon(Icons.check, size: 180.0, color: Colors.green,),
              SizedBox(height: _screenSize.height * 0.03,),

              Text(
                'THE PAYMENT WAS COMPLETELY SUCCESSFULLY',
                textScaleFactor: 0.96,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0.1,
                  color: kDarkColor,
                  //  fontFamily: 'Montserrat-SB',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: _screenSize.height * 0.015,),
              Text(
                "We have received your order",
                textScaleFactor: 0.96,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.1,
                  color: kDarkColor,
                  //  fontFamily: 'Montserrat-SB',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: _screenSize.height * 0.015,),
              Text(
                "You will receive an email with the shipping details",
                textAlign: TextAlign.center,
                style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
              ),

              SizedBox(height: _screenSize.height * 0.025,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Button(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                          MainHomepage()), (Route<dynamic> route) => false);
                    },
                    buttonText: 'BACK',
                    height: 0.065
                ),
              ),
              SizedBox(height: _screenSize.height * 0.03,),
            ],
          ),
        ),
      ),

    );
  }
}
