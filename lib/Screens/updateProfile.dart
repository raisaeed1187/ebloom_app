import 'package:ebloom_app/Screens/mainHomepage.dart';
import 'package:ebloom_app/Screens/profilePage.dart';
import 'package:ebloom_app/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Config/app_config.dart';
import 'package:flutter/cupertino.dart';

class UpdateProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: true,
        elevation: 3,
        title: Text('My Profile', style: TextStyle(color: kDarkColor),),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: kDarkColor,)),

      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: _screenSize.height * 0.02,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Update Details',
                style: TextStyle(
                  color: kDarkColor,
                  //fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat-SB',
                  fontSize: 20,
                ),
              ),
            ),

            Container(
              height: _screenSize.height/1.46,
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
                          height: _screenSize.height * 0.025,
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
                          height: _screenSize.height * 0.025,
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
                  padding: EdgeInsets.only(bottom: 5, top:15, left: 8, right: 8),
                  child: Button(
                    onTap: (){
                      print('button pressed');
                    },
                    buttonText: 'Update',
                    height: 0.065,
                    //height: 0.065,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
