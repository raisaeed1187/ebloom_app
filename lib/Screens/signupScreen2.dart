import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Screens/mainHomepage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Widgets/button.dart';

class SignupScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: kGreyColor,)),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome!',
                            style: TextStyle(
                              color: kDarkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: _screenSize.width / 18,
                            ),
                          ),
                          Text(
                            'Sign up.',
                            style: TextStyle(
                              color: kDarkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: _screenSize.width / 20,
                            ),
                          ),
                        ],
                      ),

                      Container(
                        height: 60.0,
                        width: _screenSize.width /6.0,
                        decoration: BoxDecoration(
                          //color: kGreyColor,
                          image: DecorationImage(
                            image: AssetImage('images/loginIcon.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: _screenSize.height/1.56,
                width: double.infinity,
                //color: kMainColor,
                padding: const EdgeInsets.only(left:8, right: 8, bottom: 20.0, top: 10.0),
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(color: kDarkColor),
                            keyboardType: TextInputType.text,
                            // validator: validateEmail,
                            onChanged: (value) {
                            },
                            decoration: new InputDecoration(
                              hintText: 'First Name',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Color(0xffe6e6e6).withOpacity(0.4),
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffe6e6e6).withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffe6e6e6).withOpacity(0.4)),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.02,
                          ),
                          TextFormField(
                            style: TextStyle(color: kDarkColor),
                            keyboardType: TextInputType.text,
                            // validator: validateEmail,
                            onChanged: (value) {
                            },
                            decoration: new InputDecoration(
                              hintText: 'Last Name',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Color(0xffe6e6e6).withOpacity(0.4),
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffe6e6e6).withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffe6e6e6).withOpacity(0.4)),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.02,
                          ),

                          TextFormField(
                            style: TextStyle(color: kDarkColor),
                            keyboardType: TextInputType.emailAddress,
                            // validator: validateEmail,
                            onChanged: (value) {
                            },
                            decoration: new InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Color(0xffe6e6e6).withOpacity(0.4),
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffe6e6e6).withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffe6e6e6).withOpacity(0.4)),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.02,
                          ),

                          TextFormField(
                            style: TextStyle(color: kDarkColor),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            onChanged: (value) {
                            },
                            decoration: new InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Color(0xffe6e6e6).withOpacity(0.4),
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffe6e6e6).withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffe6e6e6).withOpacity(0.4)),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.03,
                          ),

                          Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              textAlign: TextAlign.left,
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
                          ),
                          SizedBox(
                            height: _screenSize.height * 0.025,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(width: 1.2, color: kLightGreyColor),),
                ),
                child: Align(
                  alignment: Alignment(0.0, 1.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5, top:8, left: 8, right: 8),
                    child: Button(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainHomepage()));
                        print('button pressed');
                      },
                      buttonText: 'Continue',
                      height: 0.065,
                      //height: 0.065,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
