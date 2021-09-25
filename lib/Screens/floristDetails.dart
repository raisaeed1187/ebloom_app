import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Screens/cartSrceen.dart';
import 'package:ebloom_app/Screens/orderScreen2.dart';
import 'package:ebloom_app/Screens/productDetails.dart';
import 'package:ebloom_app/Widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'orderScreen.dart';


class FloristDetails extends StatefulWidget {
  final int type;
  FloristDetails({required this.type});

  @override
  _FloristDetailsState createState() => _FloristDetailsState();
}

class _FloristDetailsState extends State<FloristDetails> {
  int _quantity = 1;


  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,

      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                //height: 250,
                height: _screenSize.height / 3.5,
                width: double.infinity,
                color: Colors.grey,
                child: Stack(

                  children:[

                    Container(
                      width: double.infinity,
                      child: Image.asset(
                        'images/flower2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),

                    /*Image.asset(
                    'images/orchids.jpg',
                    fit: BoxFit.contain,
                    ),*/


                    Positioned(
                      top: 10.0,
                      left: 10.0,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          child: Padding(padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.arrow_back_ios_sharp, color: kMainColor,),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          child: Padding(padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.favorite_border, color: kMainColor,),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(bottom:2.0, top: 12.0, left: 12.0, right: 12.0,),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(
                        height: _screenSize.height * 0.008,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            flex: 3,
                            child: GestureDetector(
                              onTap: ()
                              {
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 50.0,
                                    width: 50.0,
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
                                  Flexible(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Kontogiorgos flowers',
                                          textScaleFactor: 0.96,
                                          style: TextStyle(
                                            fontSize: 18,
                                            letterSpacing: 0.1,
                                            color: kDarkColor,
                                            //  fontFamily: 'Montserrat-SB',
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 3.0),
                                        RatingBarIndicator(
                                          rating: 3.5,
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star,
                                            color: Colors.amberAccent.withAlpha(500),
                                          ),
                                          itemCount: 5,
                                          itemSize: 15.0,
                                          unratedColor: Colors.yellow.withAlpha(100),
                                          direction: Axis.horizontal,
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Min',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat-M',
                                    color: kDarkColor,
                                  ),
                                ),
                                Text(
                                  '50 €',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat-M',
                                    color: kDarkColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.008,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 180.0),
                //color: kGreyColor,
                // constraints: BoxConstraints(maxHeight:  _screenSize.height /2,),
                margin: const EdgeInsets.symmetric(vertical:0, horizontal: 10.0),
                child: TabBar(
                  isScrollable: false,
                  indicatorColor: kMainColor,
                  labelColor: kMainColor,
                  labelStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  unselectedLabelColor: kDarkColor,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  indicator: BoxDecoration(
                    border: Border(bottom: BorderSide(color: kMainColor, width: 2.0,)),
                    color: kBackgroundColor,
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'Products',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat-M',),
                      ),



                    ),
                    Tab(
                      child: Text(
                        "Info",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat-M',),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Ratings",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat-M',),
                      ),
                    ),
                  ],
                ),

              ),

              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    TabBarView(
                      //physics: NeverScrollableScrollPhysics(),
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: _screenSize.height * 0.01,
                              ),
                              GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                                  },
                                child: Container(
                                  //padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
                                  margin: EdgeInsets.only(top:15.0, left:10, right: 10.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex:3,
                                        child: Container(

                                          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
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
                                              Text(
                                                "ΛΟΥΛΟΥΔΙΑ ΕΠΟΧΗΣ ΣΕ ΔΙΑΦΟΡΑ ΧΡΩΜΑΤΑ",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
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
                                    ],
                                  ),

                                  decoration: BoxDecoration(
                                    color: kBackgroundColor,
                                    //color: Color(0xfff5f5f5).withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                                },
                                child: Container(
                                  //padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
                                  margin: EdgeInsets.only(top:15.0, left:10, right: 10.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex:3,
                                        child: Container(

                                          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
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
                                              Text(
                                                "ΛΟΥΛΟΥΔΙΑ ΕΠΟΧΗΣ ΣΕ ΔΙΑΦΟΡΑ ΧΡΩΜΑΤΑ",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
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
                                    ],
                                  ),

                                  decoration: BoxDecoration(
                                    color: kBackgroundColor,
                                    //color: Color(0xfff5f5f5).withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                                },
                                child: Container(
                                  //padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
                                  margin: EdgeInsets.only(top:15.0, left:10, right: 10.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex:3,
                                        child: Container(

                                          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
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
                                              Text(
                                                "ΛΟΥΛΟΥΔΙΑ ΕΠΟΧΗΣ ΣΕ ΔΙΑΦΟΡΑ ΧΡΩΜΑΤΑ",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
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
                                    ],
                                  ),

                                  decoration: BoxDecoration(
                                    color: kBackgroundColor,
                                    //color: Color(0xfff5f5f5).withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                                },
                                child: Container(
                                  //padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
                                  margin: EdgeInsets.only(top:15.0, left:10, right: 10.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex:3,
                                        child: Container(

                                          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 8, left: 8),
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
                                              Text(
                                                "ΛΟΥΛΟΥΔΙΑ ΕΠΟΧΗΣ ΣΕ ΔΙΑΦΟΡΑ ΧΡΩΜΑΤΑ",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
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
                                    ],
                                  ),

                                  decoration: BoxDecoration(
                                    color: kBackgroundColor,
                                    //color: Color(0xfff5f5f5).withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: _screenSize.height * 0.125,
                              ),
                            ],
                          ),
                        ),


                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: _screenSize.height * 0.035,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16.0),
                                child: Text(
                                  'Working Hours',
                                  style: TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 0.5,
                                    fontFamily: 'Montserrat-M',
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              WorkingHoursWidget(
                                day: 'Monday',
                                time: '09:00  -  14:00',
                              ),
                              WorkingHoursWidget(
                                day: 'Tuesday',
                                time: '09:00  -  14:00',
                              ),
                              WorkingHoursWidget(
                                day: 'Wednesday',
                                time: '09:00  -  14:00',
                              ),
                              WorkingHoursWidget(
                                day: 'Thursday',
                                time: '09:00  -  14:00',
                              ),
                              WorkingHoursWidget(
                                day: 'Friday',
                                time: '09:00  -  14:00',
                              ),
                              WorkingHoursWidget(
                                day: 'Saturday',
                                time: ' - ',
                              ),
                              WorkingHoursWidget(
                                day: 'Sunday',
                                time: ' - ',
                              ),

                              SizedBox(
                                height: _screenSize.height * 0.14,
                              ),
                            ],
                          ),
                        ),


                        Center(
                          child: Text(
                            "Ratings",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14.0, ),
                          ),
                        ),
                      ],
                    ),
                    widget.type == 1 ?
                    Container(
                      child: Align(
                        alignment: Alignment(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20, left: 12, right: 12),
                          child:
                          // ignore: deprecated_member_use
                          FlatButton(
                            //onPressed: () => showAlertDialog(context),
                            onPressed: (){

                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> CartScreen()));
                              //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OrderScreen2()));
                            },
                            minWidth: _screenSize.width/ 1.2,
                            height: _screenSize.width * 0.13,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width:30,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: kBackgroundColor,
                                    borderRadius: BorderRadius.circular( 2.0),
                                  ),
                                  child: Center(
                                    child: Text('1',
                                      style: TextStyle(fontSize: 16.0, fontFamily: 'Montserrat-SB', color: kMainColor,),
                                    ),
                                  ),
                                ),

                                Text(
                                  "Cart",
                                  textScaleFactor: 0.96,
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 0.6,
                                    color: kBackgroundColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),

                                Text(
                                  "250 €",
                                  textScaleFactor: 0.96,
                                  style: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 0.6,
                                    color: kBackgroundColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            textColor: kBackgroundColor,
                            color: kMainColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                      ),
                    )
                    :Container(),
                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkingHoursWidget extends StatelessWidget {

  WorkingHoursWidget({required this.day, required this.time});
  final String day, time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(day),

          Text(time),
        ],
      ),
      decoration: BoxDecoration(
        //color: kBackgroundColor,
        border: Border(bottom: BorderSide(color: kLightGreyColor, width: 1.0,)),
      ),
    );
  }
}
