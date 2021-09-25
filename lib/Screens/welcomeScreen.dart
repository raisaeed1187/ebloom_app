import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Screens/loginScreen2.dart';
import 'package:ebloom_app/Screens/mainHomepage.dart';
import 'package:ebloom_app/Screens/signupScreen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Widgets/button.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kBackgroundColor,
          elevation: 0,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0, top: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainHomepage()));
                    },
                    child: Text(
                      'Skip',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDarkColor,
                        fontSize: 16,
                        //fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                height: _screenSize.height/1.75,
                width: double.infinity,
                alignment: Alignment.center,
                //color: kMainColor,
                padding: const EdgeInsets.only(bottom: 20.0, top: 50.0),
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: _screenSize.height/ 5,
                            width: _screenSize.width / 2.5,
                            decoration: BoxDecoration(
                              //color: kGreyColor,
                              image: DecorationImage(
                                image: AssetImage('images/loginIcon.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(bottom: 0, top:0, left: 10, right: 10),
               /* decoration: BoxDecoration(
                  border: Border(top: BorderSide(width: 1.2, color: kLightGreyColor),),
                ),*/
                child: Align(
                  alignment: Alignment(0.0, 1.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to eBloom!',
                        style: TextStyle(
                          color: kDarkColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.005,
                      ),
                      Text(
                        'Time to Bloom, let\'s get in.',
                        style: TextStyle(
                          color: kGreyColor,
                          fontSize: 14,
                          //fontFamily: 'Montserrat-R',
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(
                        height: _screenSize.height * 0.048,
                      ),


                      Button(
                        onTap: (){
                          print('button pressed');

                          buildShowModalBottomSheet(context);
                        },
                        buttonText: 'LogIn or SignUp',
                        height: 0.065,
                        //height: 0.065,
                      ),

                      SizedBox(
                        height: _screenSize.height * 0.030 ,
                      ),

                      RichText(
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.0,
                        text: TextSpan(
                            text: 'Information',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGreyColor ,
                                fontFamily: 'Montserrat-M',
                              fontWeight: FontWeight.w400,

                                decoration: TextDecoration.underline
                            ),

                            children: [

                              TextSpan(text: ' about your login or registration.',
                                recognizer: TapGestureRecognizer()..onTap = () {
                                  // Single tapped.
                                },
                                style: TextStyle(
                                    decoration: TextDecoration.none
                                ),
                              ),
                            ]
                        ),
                      ),

                      SizedBox(
                        height: _screenSize.height * 0.004 ,
                      ),

                      RichText(
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.0,
                        text: TextSpan(
                            text: 'By signing up you agree to our ',

                            style: TextStyle(
                              fontSize: 12,
                              color: kGreyColor ,
                              fontFamily: 'Montserrat-M',
                              fontWeight: FontWeight.w400,
                            ),

                            children: [

                              TextSpan(text: 'terms and conditions',
                                recognizer: TapGestureRecognizer()..onTap = () {
                                  // Single tapped.
                                },
                                style: TextStyle(
                                    decoration: TextDecoration.underline
                                ),
                              ),
                              TextSpan(
                                  text: ' and ',
                              ),
                              TextSpan(text: 'privacy policy',
                                recognizer: TapGestureRecognizer()..onTap = () {
                                  // Single tapped.
                                },
                                style: TextStyle(
                                    decoration: TextDecoration.underline
                                ),
                              ),
                            ]
                        ),
                      ),

/*
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'By signing up you agree to our ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: kGreyColor ,
                              //fontFamily: 'Montserrat-R',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                            },
                            child: Text(
                              'terms and conditions',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kGreyColor,
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                                //fontFamily: 'Montserrat-R',
                              ),
                            ),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ' and ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: kGreyColor ,
                              //fontFamily: 'Montserrat-R',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                            },
                            child: Text(
                              'privacy policy.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kGreyColor,
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                                //fontFamily: 'Montserrat-R',
                              ),
                            ),
                          ),
                        ],
                      ),*/

                      SizedBox(
                        height: _screenSize.height * 0.034 ,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      //  enableDrag: true,
      isDismissible: true,
      useRootNavigator: true,
      builder: (BuildContext ctx) {
        return Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height * 0.26,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),

                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen2()));
                        },
                        child: Container(
                          height:  MediaQuery.of(context).size.height * 0.063,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: kDarkColor,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                //fontSize: 20.0,
                                fontSize: MediaQuery.of(context).size.width / 22,
                                fontFamily: 'Montserrat-M',
                                //fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),

                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignupScreen2()));
                        },
                        child: Container(
                          height:  MediaQuery.of(context).size.height * 0.063,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: kDarkColor,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              'Sign up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                //fontSize: 20.0,
                                fontSize: MediaQuery.of(context).size.width / 22,
                                fontFamily: 'Montserrat-M',
                                //fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
