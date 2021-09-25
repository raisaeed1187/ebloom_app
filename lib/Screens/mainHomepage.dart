import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Model/floristList.dart';
import 'package:ebloom_app/Screens/profilePage.dart';
import 'package:ebloom_app/Screens/showFlorists.dart';
import 'package:ebloom_app/Widgets/DateTimePicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Widgets/image_slider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ebloom_app/Model/categoryList.dart';

import 'floristDetails.dart';
import 'orderDetailScreen.dart';

class MainHomepage extends StatefulWidget {
  @override
  _MainHomepageState createState() => _MainHomepageState();
}

class _MainHomepageState extends State<MainHomepage>
    with SingleTickerProviderStateMixin {


  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Utilities().customAlertDialog(
            'Order',
            [

              Text(
                'Address Confirmation',
                //textScaleFactor: 1.2,
                textAlign: TextAlign.center,
                textScaleFactor: 1.1,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.1,
                  color: kMainColor,
                  //  fontFamily: 'Montserrat-SB',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.008),
              Text(
                'Confirm that your address has been filled in correctly.',
                //textScaleFactor: 1.2,
                textAlign: TextAlign.center,
                textScaleFactor: 0.96,
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 0.1,
                  color: kDarkColor,
                  fontFamily: 'Montserrat-M',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),


              Text(
                "City",
                textScaleFactor: 0.90,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.1,
                  color: kDarkColor,
                  //  fontFamily: 'Montserrat-SB',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 6,),
              TextFormField(
                style: TextStyle(color: kDarkColor),
                keyboardType: TextInputType.text,
                // validator: validateEmail,
                onChanged: (value) {
                },
                decoration: new InputDecoration(
                  hintText: 'City',
                  hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                  fillColor: kBackgroundColor,
                  filled: true,
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(14),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 0.8, color: kLightGreyColor)),

                ),
              ),
              SizedBox(height: 15,),


              Text(
                "Address",
                textScaleFactor: 0.90,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.1,
                  color: kDarkColor,
                  //  fontFamily: 'Montserrat-SB',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 6,),
              TextFormField(
                style: TextStyle(color: kDarkColor),
                keyboardType: TextInputType.text,
                // validator: validateEmail,
                onChanged: (value) {
                },
                decoration: new InputDecoration(
                  hintText: 'Address',
                  hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                  fillColor: kBackgroundColor,
                  filled: true,
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(14),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 0.8, color: kLightGreyColor)),

                ),
              ),
              SizedBox(height: 15,),


              Text(
                "Delivery date",
                textScaleFactor: 0.90,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.1,
                  color: kDarkColor,
                  //  fontFamily: 'Montserrat-SB',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 6,),
              BasicDateField(),
              SizedBox(height: 8,),
              RichText(
                textAlign: TextAlign.left,
                textScaleFactor: 0.96,
                text: TextSpan(
                    text: 'Note: ',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.1,
                      color: kMainColor,
                      fontWeight: FontWeight.w700,
                    ),

                    children: [

                      TextSpan(text: 'For same day deliveries orders accepted until 18:00',
                        style: TextStyle(
                          color: kDarkColor,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Montserrat-M',
                        ),
                      ),
                    ]
                ),
              ),


              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ShowFlorists()));
                      },
                      child: Utilities().buttonWidget('Continue'),
                    ),
                  ),
                ],
              ),
            ],
            context);
      },
    );
  }

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
      body: Padding(
        padding: const EdgeInsets.only(top:15.0, left:15.0, right: 15.0, bottom: 0),
        child: ListView(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: _screenSize.width / 1.6,),
                        child: Text(
                          'Welcome UserABC!',
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: kDarkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(height: 16.0,),


                      Row(
                        children: [
                          Container(
                            constraints: BoxConstraints(maxWidth: _screenSize.width / 1.56,),
                            child: Text(
                              'Location ABC Location ABC ABC Location ABC',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: kDarkColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 36.0,
                      width: 36.0,
                      child: Icon(Icons.person, size: 24.0, color: kDarkColor,),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFf2f2f2),
                        border: Border.all(
                          color: Color(0xFFf2f2f2),
                          style: BorderStyle.solid,
                          width: 2.0,),

                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 18,),

              /*TextFormField(
                style: TextStyle(color: kDarkColor),
                keyboardType: TextInputType.text,
                  decoration: TextfieldDecoration(),
              ),
              SizedBox(height: 20,),*/

              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child:TextFormField(
                      style: TextStyle(color: kDarkColor),
                      keyboardType: TextInputType.text,
                      decoration: TextfieldDecoration(),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Expanded(
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () => showAlertDialog(context),
                      height: 48,
                      child: Icon(Icons.search),
                      textColor: kMainColor,
                      color: Color(0xFFf2f2f2).withOpacity(1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),


              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                child: ImageSlideshow(
                  width: double.infinity,
                  height: 200,
                  initialPage: 0,
                  indicatorColor: kLightGreyColor,
                  indicatorBackgroundColor: kGreyColor,
                  onPageChanged: (value) {
                    debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 4000,
                  isLoop: true,
                  children: [
                    Image.asset(
                      'images/ebloom_background2.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'images/ebloom_background.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'images/ebloom_background2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),


              SizedBox(height: 30,),


              Container(
                constraints: BoxConstraints(maxWidth: _screenSize.width / 1.6,),
                child: Text(
                  'Recommended',
                  textScaleFactor: 0.96,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: kDarkColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
               //height: 245,
                constraints: BoxConstraints(minHeight: 245, maxHeight: 250),
               width: double.infinity,
               //color: kMainColor,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 //padding: EdgeInsets.only(right:10.0),
                 children: [
                   GestureDetector(
                     onTap: ()
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails(type: 0)));
                     },
                     child: Card(
                       elevation: 0.5,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                       margin: EdgeInsets.only(right: 15.0, left:0, bottom:4, top:4),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           ClipRRect(
                             borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(6),
                               topRight: Radius.circular(6),
                             ),
                             child: Image.asset(
                               'images/flower2.jpg',
                               height: 130,
                               width: 185,
                               fit: BoxFit.cover,
                             ),
                           ),

                           Padding(
                             padding: const EdgeInsets.only(left: 12.0, top: 12),
                             child: Container(
                               constraints: BoxConstraints(maxWidth: 160,),
                               child: Text(
                                 "ΖΑΜΙΑ ΜΙΚΡΗ",
                                 textScaleFactor: 0.92,
                                 maxLines: 2,
                                 overflow: TextOverflow.ellipsis,
                                 style: TextStyle(
                                   fontSize: 16,
                                   letterSpacing: 0.1,
                                   color: kDarkColor,
                                   //  fontFamily: 'Montserrat-SB',
                                   fontWeight: FontWeight.w700,
                                 ),
                                 textAlign: TextAlign.left,
                               ),
                             ),
                           ),

                           Padding(
                             padding: const EdgeInsets.only(left: 12.0, top: 6),
                             child: Column(
                               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   "Min: 50\€",
                                   textAlign: TextAlign.left,
                                   style: TextStyle(color: kGreyColor, fontSize: 14.0, fontFamily: 'Montserrat-M', fontWeight: FontWeight.w400,),
                                 ),
                                 SizedBox(height: 4,),

                                 RichText(
                                   textAlign: TextAlign.left,
                                  // textScaleFactor: 0.96,
                                   text: TextSpan(
                                       text: '★ 4.2',
                                       style: TextStyle(
                                         fontSize: 14,
                                         //letterSpacing: 0.1,
                                         color: kRatingColor,
                                         fontFamily: 'Montserrat-M',
                                         fontWeight: FontWeight.w400,
                                       ),

                                       children: [

                                         TextSpan(
                                           text: '  - (425)',
                                           style: TextStyle(
                                             color: kGreyColor,
                                           ),
                                         ),
                                       ]
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   GestureDetector(
                     onTap: ()
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails(type: 0)));
                     },
                     child: Card(
                       elevation: 0.5,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                       margin: EdgeInsets.only(right: 15.0, left:0, bottom:4, top:4),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           ClipRRect(
                             borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(6),
                               topRight: Radius.circular(6),
                             ),
                             child: Image.asset(
                               'images/flower2.jpg',
                               height: 130,
                               width: 185,
                               fit: BoxFit.cover,
                             ),
                           ),

                           Padding(
                             padding: const EdgeInsets.only(left: 12.0, top: 12),
                             child: Container(
                               constraints: BoxConstraints(maxWidth: 160,),
                               child: Text(
                                 "ΖΑΜΙΑ ΜΙΚΡΗ",
                                 textScaleFactor: 0.92,
                                 maxLines: 2,
                                 overflow: TextOverflow.ellipsis,
                                 style: TextStyle(
                                   fontSize: 16,
                                   letterSpacing: 0.1,
                                   color: kDarkColor,
                                   //  fontFamily: 'Montserrat-SB',
                                   fontWeight: FontWeight.w700,
                                 ),
                                 textAlign: TextAlign.left,
                               ),
                             ),
                           ),

                           Padding(
                             padding: const EdgeInsets.only(left: 12.0, top: 6),
                             child: Column(
                               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   "Min: 50\€",
                                   textAlign: TextAlign.left,
                                   style: TextStyle(color: kGreyColor, fontSize: 14.0, fontFamily: 'Montserrat-M', fontWeight: FontWeight.w400,),
                                 ),
                                 SizedBox(height: 4,),

                                 RichText(
                                   textAlign: TextAlign.left,
                                   // textScaleFactor: 0.96,
                                   text: TextSpan(
                                       text: '★ 4.2',
                                       style: TextStyle(
                                         fontSize: 14,
                                         //letterSpacing: 0.1,
                                         color: kRatingColor,
                                         fontFamily: 'Montserrat-M',
                                         fontWeight: FontWeight.w400,
                                       ),

                                       children: [

                                         TextSpan(
                                           text: '  - (425)',
                                           style: TextStyle(
                                             color: kGreyColor,
                                           ),
                                         ),
                                       ]
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   GestureDetector(
                     onTap: ()
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails(type: 0)));
                     },
                     child: Card(
                       elevation: 0.5,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                       margin: EdgeInsets.only(right: 15.0, left:0, bottom:4, top:4),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           ClipRRect(
                             borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(6),
                               topRight: Radius.circular(6),
                             ),
                             child: Image.asset(
                               'images/flower2.jpg',
                               height: 130,
                               width: 185,
                               fit: BoxFit.cover,
                             ),
                           ),

                           Padding(
                             padding: const EdgeInsets.only(left: 12.0, top: 12),
                             child: Container(
                               constraints: BoxConstraints(maxWidth: 160,),
                               child: Text(
                                 "ΖΑΜΙΑ ΜΙΚΡΗ",
                                 textScaleFactor: 0.92,
                                 maxLines: 2,
                                 overflow: TextOverflow.ellipsis,
                                 style: TextStyle(
                                   fontSize: 16,
                                   letterSpacing: 0.1,
                                   color: kDarkColor,
                                   //  fontFamily: 'Montserrat-SB',
                                   fontWeight: FontWeight.w700,
                                 ),
                                 textAlign: TextAlign.left,
                               ),
                             ),
                           ),

                           Padding(
                             padding: const EdgeInsets.only(left: 12.0, top: 6),
                             child: Column(
                               //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   "Min: 50\€",
                                   textAlign: TextAlign.left,
                                   style: TextStyle(color: kGreyColor, fontSize: 14.0, fontFamily: 'Montserrat-M', fontWeight: FontWeight.w400,),
                                 ),
                                 SizedBox(height: 4,),

                                 RichText(
                                   textAlign: TextAlign.left,
                                   // textScaleFactor: 0.96,
                                   text: TextSpan(
                                       text: '★ 4.2',
                                       style: TextStyle(
                                         fontSize: 14,
                                         //letterSpacing: 0.1,
                                         color: kRatingColor,
                                         fontFamily: 'Montserrat-M',
                                         fontWeight: FontWeight.w400,
                                       ),

                                       children: [

                                         TextSpan(
                                           text: '  - (425)',
                                           style: TextStyle(
                                             color: kGreyColor,
                                           ),
                                         ),
                                       ]
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),


              SizedBox(height: 30,),


              Container(
                constraints: BoxConstraints(maxWidth: _screenSize.width / 1.6,),
                child: Text(
                  'New Florists',
                  textScaleFactor: 0.96,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: kDarkColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                //height: 245,
                constraints: BoxConstraints(minHeight: 245, maxHeight: 250),
                width: double.infinity,
                //color: kMainColor,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  //padding: EdgeInsets.only(right:10.0),
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails(type: 0)));
                      },
                      child: Card(
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                        margin: EdgeInsets.only(right: 15.0, left:0, bottom:4, top:4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                              child: Image.asset(
                                'images/flower2.jpg',
                                height: 130,
                                width: 185,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 12),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 160,),
                                child: Text(
                                  "ΖΑΜΙΑ ΜΙΚΡΗ",
                                  textScaleFactor: 0.92,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 0.1,
                                    color: kDarkColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 6),
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Min: 50\€",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: kGreyColor, fontSize: 14.0, fontFamily: 'Montserrat-M', fontWeight: FontWeight.w400,),
                                  ),
                                  SizedBox(height: 4,),

                                  RichText(
                                    textAlign: TextAlign.left,
                                    // textScaleFactor: 0.96,
                                    text: TextSpan(
                                        text: '★ 4.2',
                                        style: TextStyle(
                                          fontSize: 14,
                                          //letterSpacing: 0.1,
                                          color: kRatingColor,
                                          fontFamily: 'Montserrat-M',
                                          fontWeight: FontWeight.w400,
                                        ),

                                        children: [

                                          TextSpan(
                                            text: '  - (425)',
                                            style: TextStyle(
                                              color: kGreyColor,
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails(type: 0)));
                      },
                      child: Card(
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                        margin: EdgeInsets.only(right: 15.0, left:0, bottom:4, top:4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                              child: Image.asset(
                                'images/flower2.jpg',
                                height: 130,
                                width: 185,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 12),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 160,),
                                child: Text(
                                  "ΖΑΜΙΑ ΜΙΚΡΗ",
                                  textScaleFactor: 0.92,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 0.1,
                                    color: kDarkColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 6),
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Min: 50\€",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: kGreyColor, fontSize: 14.0, fontFamily: 'Montserrat-M', fontWeight: FontWeight.w400,),
                                  ),
                                  SizedBox(height: 4,),

                                  RichText(
                                    textAlign: TextAlign.left,
                                    // textScaleFactor: 0.96,
                                    text: TextSpan(
                                        text: '★ 4.2',
                                        style: TextStyle(
                                          fontSize: 14,
                                          //letterSpacing: 0.1,
                                          color: kRatingColor,
                                          fontFamily: 'Montserrat-M',
                                          fontWeight: FontWeight.w400,
                                        ),

                                        children: [

                                          TextSpan(
                                            text: '  - (425)',
                                            style: TextStyle(
                                              color: kGreyColor,
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails(type: 0)));
                      },
                      child: Card(
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                        margin: EdgeInsets.only(right: 15.0, left:0, bottom:4, top:4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                              child: Image.asset(
                                'images/flower2.jpg',
                                height: 130,
                                width: 185,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 12),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 160,),
                                child: Text(
                                  "ΖΑΜΙΑ ΜΙΚΡΗ",
                                  textScaleFactor: 0.92,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 0.1,
                                    color: kDarkColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 12.0, top: 6),
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Min: 50\€",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: kGreyColor, fontSize: 14.0, fontFamily: 'Montserrat-M', fontWeight: FontWeight.w400,),
                                  ),
                                  SizedBox(height: 4,),

                                  RichText(
                                    textAlign: TextAlign.left,
                                    // textScaleFactor: 0.96,
                                    text: TextSpan(
                                        text: '★ 4.2',
                                        style: TextStyle(
                                          fontSize: 14,
                                          //letterSpacing: 0.1,
                                          color: kRatingColor,
                                          fontFamily: 'Montserrat-M',
                                          fontWeight: FontWeight.w400,
                                        ),

                                        children: [

                                          TextSpan(
                                            text: '  - (425)',
                                            style: TextStyle(
                                              color: kGreyColor,
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 30,),


              Container(
                constraints: BoxConstraints(maxWidth: _screenSize.width / 1.6,),
                child: Text(
                  'Recent Orders',
                  textScaleFactor: 0.96,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: kDarkColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10,),

/*
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5,),
                padding: EdgeInsets.all(0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                  margin: EdgeInsets.all(0),
                  elevation: 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            //height: 200,
                            //height: _screenSize.height /4.2,
                            height: _screenSize.height / 6,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                              ),
                              child: Image.asset(
                                'images/bouquet3.jpg',
                                fit: BoxFit.cover,
                                color: Color(0xff000000).withOpacity(0.35),
                                colorBlendMode: BlendMode.hardLight,
                              ),
                            ),
                          ),

                          Positioned(
                            left: 10,
                            bottom: 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 45.0,
                                  width: 45.0,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        new BoxShadow(
                                          color: Colors.black38,
                                          offset: new Offset(
                                            3.0,
                                            3.0,
                                          ),
                                          blurRadius: 4.0,
                                        )
                                      ],
                                      // borderRadius: BorderRadius.circular(50.0),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2.0),
                                      image: DecorationImage(
                                          image:
                                          AssetImage('images/florist_logo2.jpg'))),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  constraints: BoxConstraints(maxWidth: _screenSize.width / 2.4,),
                                  child: Text(
                                    'Florist Name',
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 18,
                                        //letterSpacing: 0.5,
                                        color: kBackgroundColor,
                                        fontFamily: 'Montserrat-M'
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.0),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              constraints: BoxConstraints(maxWidth: _screenSize.width / 2.5,),
                              child: Text(
                                'Product Name',
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18,
                                    //letterSpacing: 0.5,
                                    fontFamily: 'Montserrat-M'
                                ),
                              ),
                            ),

                            Container(
                              constraints: BoxConstraints(maxWidth: _screenSize.width / 3.5,),
                              child: Text(
                                '250 \€',
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18,
                                    //letterSpacing: 0.5,
                                    fontFamily: 'Montserrat-M'
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),


              SizedBox(height: 30,),

              GestureDetector(
                onTap: ()
                {
                },
                child: Container(
                  //padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
                  //margin: EdgeInsets.only(top:15.0, left:10, right: 10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                    margin: EdgeInsets.all(0),
                    elevation: 0.6,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          //width: 90.0,
                          //height: 90.0,
                          width: _screenSize.height /6,
                          height: _screenSize.height / 7.5,

                          //padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: AssetImage('images/bouquet3.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        Flexible(
                          flex:3,
                          child: Container(

                            padding: const EdgeInsets.only(top: 5.0, bottom: 15.0, right: 8, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bouquets",
                                  textScaleFactor: 0.96,
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 0.1,
                                    color: kDarkColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 5,),

                                RichText(
                                  textAlign: TextAlign.left,
                                  textScaleFactor: 0.96,
                                  text: TextSpan(
                                      text: 'by:  ',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat-M', color: kDarkColor, fontSize: 14.0, fontWeight: FontWeight.w400,),

                                      children: [

                                        TextSpan(text: 'ΖΑΜΙΑ ΜΙΚΡΗ',
                                          style: TextStyle(
                                            color: kGreyColor,
                                            fontFamily: 'Montserrat-M',
                                          ),
                                        ),
                                      ]
                                  ),
                                ),


                                SizedBox(height: 5,),
                                Text(
                                  "50 €",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color:kDarkColor , fontSize: 18.0, fontFamily: 'Montserrat-M',),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


                ),
              ),

              SizedBox(height: 30,),*/

              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailScreen()));
                },
                child: Container(
                  //padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
                  //margin: EdgeInsets.only(top:15.0, left:10, right: 10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                    margin: EdgeInsets.all(0),
                    elevation: 0.6,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          //width: 90.0,
                          //height: 90.0,
                          width: _screenSize.height / 5.98,
                          height: _screenSize.height / 7.5,

                          //padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: AssetImage('images/florist_logo2.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        Flexible(
                          flex:3,
                          child: Container(

                            padding: const EdgeInsets.only(top: 5.0, bottom: 15.0, right: 8, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ΖΑΜΙΑ ΜΙΚΡΗ",
                                  textScaleFactor: 0.96,
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 0.1,
                                    color: kDarkColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 5,),

                                Container(
                                  constraints: BoxConstraints(maxWidth: _screenSize.width / 1.9,),
                                  child: Text(
                                    "Flowers, Bouquets, Rose Bear, Orchids",
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    textScaleFactor: 0.96,
                                    style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                  ),
                                ),
                                SizedBox(height: 5,),

                                Container(
                                  constraints: BoxConstraints(maxWidth: _screenSize.width / 1.9,),
                                  child: Text(
                                    "Glyfada, Greece",
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    textScaleFactor: 0.96,
                                    style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                  ),
                                ),
                                SizedBox(height: 5,),

                                Text(
                                  "500 €",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color:kDarkColor , fontSize: 18.0, fontFamily: 'Montserrat-M',),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  // decoration: BoxDecoration(
                  //   color: kBackgroundColor,
                  //   //color: Color(0xfff5f5f5).withOpacity(0.6),
                  //   borderRadius: BorderRadius.circular(5.0),
                  // ),
                ),
              ),

              SizedBox(height: 30,),
            ],
        ),
      ),
    );
  }
}


