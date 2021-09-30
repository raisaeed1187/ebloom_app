import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Screens/mainHomepage.dart';
import 'package:ebloom_app/Screens/myOrdersScreen.dart';
import 'package:ebloom_app/Screens/updateProfile.dart';
import 'package:ebloom_app/Widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'aboutScreen.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: kBackgroundColor,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: kDarkColor, size: 22.0,)),

        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 80.0,
                      width: 80.0,
                      child: Icon(Icons.person, size: 45.0, color: kBackgroundColor,),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //color: Color(0xFFf2f2f2),
                        color: kMainColor,
                        border: Border.all(
                          color: kBackgroundColor,
                          style: BorderStyle.solid,
                          width: 3.0,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'USER ABC',
                              textScaleFactor: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 0.1,
                                color: kDarkColor,
                                  fontFamily: 'Montserrat-SB',
                                //fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 2.0),
                            Text(
                              'UserABC_123@gmail.com',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 14,
                                color: kDarkGreyColor,
                              ),
                              textAlign: TextAlign.left,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                decoration: BoxDecoration(

                  color: Color(0xfff2f2f2).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              SizedBox(height: 20.0,),
              /*Divider(
                thickness: 6.0,
                color: Color(0xfff2f2f2).withOpacity(0.8),
              ),*/

              SizedBox(height: 20.0,),
              Text(
                'My Information',
                textScaleFactor: 0.96,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0.1,
                  color: kDarkColor,
                    fontFamily: 'Montserrat-SB',
                  //fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              Divider(
                thickness: 1.2,
                color: kDarkColor,
              ),
              SizedBox(height: 5,),

              SettingContainer(
                iconData: Icons.person,
                label: 'My Profile',
                onPress: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateProfile()));
                },
              ),
              SettingContainer(
                iconData: Icons.shopping_cart_rounded,
                label: 'My Orders',
                onPress: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyOrdersScreen()));
                },
              ),
              /*SettingContainer(
                iconData: Icons.location_on,
                label: 'My Addresses',
                onPress: ()
                {
                },
              ),
              SettingContainer(
                iconData: Icons.money_rounded,
                label: 'Payment Methods',
                onPress: ()
                {
                },
              ),*/


              SizedBox(height: 20.0,),
              Text(
                'About',
                textScaleFactor: 0.96,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0.1,
                  color: kDarkColor,
                  fontFamily: 'Montserrat-SB',
                  //fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              Divider(
                thickness: 1.2,
                color: kDarkColor,
              ),
              SizedBox(height: 5,),


              SettingContainer(
                iconData: Icons.wysiwyg_rounded,
                label: 'Personal Data',
                onPress: ()
                {
                },
              ),
              SettingContainer(
                iconData: Icons.info_rounded,
                label: 'About eBloom',
                onPress: ()
                {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutScreen()));
                },
              ),
              SettingContainer(
                iconData: Icons.phone,
                label: 'Contact Us',
                onPress: ()
                {
                },
              ),
              SettingContainer(
                iconData: Icons.language_rounded,
                label: 'Language: English (EN)',
                onPress: ()
                {
                },
              ),

              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }
}



class SettingContainer extends StatelessWidget {

  final IconData iconData;
  final String label;
  final Function() onPress;

  SettingContainer( {required this.iconData, required this.label, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        color: kBackgroundColor,
        padding: const EdgeInsets.only(left:0.0, right: 10.0, bottom:0, top: 15.0),
        margin: EdgeInsets.only(bottom: 18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:8.0, bottom: 2),
              child: Icon(iconData, color: kDarkColor, size: 22.0,),
            ),
            SizedBox(width: 12,),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       // SizedBox(height: 8.0),
                        Text(
                          label,
                          textScaleFactor: 0.96,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: kDarkColor,
                          ),
                        ),

                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: kDarkColor, size: 16.0,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}