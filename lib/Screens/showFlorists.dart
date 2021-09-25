import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Model/floristList.dart';
import 'package:ebloom_app/Screens/floristDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ebloom_app/Widgets/search_widget.dart';

class ShowFlorists extends StatefulWidget {
  @override
  _ShowFloristsState createState() => _ShowFloristsState();
}

class _ShowFloristsState extends State<ShowFlorists> {
  @override
  Widget build(BuildContext context) {

    TextEditingController textController = TextEditingController();
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: kBackgroundColor,
          automaticallyImplyLeading: true,
          elevation: 1.5,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 6,),
              Text(
                'Florists',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 0.2,
                  color: kDarkColor,
                  //  fontFamily: 'Montserrat-SB',
                fontWeight: FontWeight.w700,
               ),
              ),

              Row(
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: _screenSize.width / 1.75,),
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                    child: Text(
                      'Location ABC Location ABC ABC Location ABC',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: kDarkColor,
                        //fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ],
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: kDarkColor, size: 20.0,),
          ),
          actions: [
            /*IconButton(
              onPressed: (){
              },
              icon: Icon(Icons.search, color: kDarkColor, size: 25.0,),
            ),*/
            Padding(

              padding: const EdgeInsets.only(top: 0, right: 2, left: 2),
              child: AnimSearchBar(
                width: _screenSize.width / 1.02,
                textController: textController,
                closeSearchOnSuffixTap: true,
                onSuffixTap: () {
                  setState(() {
                    textController.clear();
                  });
                },
              ),
            ),
          ],
        ),

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: (fl.length),
              itemBuilder: (BuildContext context, index) {
                FloristList f = fl[index];
                return GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails(type: 0,)));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 0, bottom: 6, left: 10, right: 10),
                    child: Card(
                      shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                      elevation: 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                //height: 180,
                                height: _screenSize.height / 4.5,
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                  ),
                                  child: Image.asset(
                                    f.coverPhoto,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10.0,
                                left: 12.0,
                                child: Container(
                                  width: 60.0,
                                  height: 60.0,
                                  margin: EdgeInsets.only(top:10.0),
                                  padding: EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 1.8),
                                      //borderRadius: BorderRadius.circular(5.0),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(f.profilePhoto),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7.0),
                          Padding(
                            padding: EdgeInsets.only(top: 4.0, left: 12, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      f.floristName,
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
                                    SizedBox(height: 2.0),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Min:  ${f.minPrice}€',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: kDarkGreyColor,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '★ 4.2',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kRatingColor,
                                      ),
                                    ),
                                    Text(
                                      '(135)',
                                      style: TextStyle(
                                        fontSize: 14,
                                        // fontWeight: FontWeight.w800,
                                        color: kDarkGreyColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                );
              },

            ),

           /* Padding(
              padding: const EdgeInsets.only(top:15.0, left: 15.0, right: 15.0, bottom: 0),
              child: Text(
                'We have found 2 reommended Florists',
                textScaleFactor: 0.98,
                style: TextStyle(
                  fontSize: 18,
                  //letterSpacing: 0.15,
                  //height: 1.0,
                  color: kDarkColor,
                  //fontFamily: 'Montserrat-SB',
                   fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),*/

           /* GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 12, bottom: 0, left: 10, right: 10),
                child: Card(
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                  elevation: 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            //height: 180,
                            height: _screenSize.height / 4.5,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                              child: Image.asset(
                                'images/flower2.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10.0,
                            left: 12.0,
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              margin: EdgeInsets.only(top:10.0),
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 1.8),
                                  //borderRadius: BorderRadius.circular(5.0),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('images/florist_logo2.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.0),
                      Padding(
                        padding: EdgeInsets.only(top: 4.0, left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Florist Name',
                                  style: TextStyle(
                                      fontSize: 18,
                                      letterSpacing: 0.2,
                                      color: kDarkColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 2.0),
                                Row(
                                  children: <Widget>[
                                    *//*Text(
                                      'Bouquets',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kDarkGreyColor,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(width: 15.0,),*//*
                                    Text(
                                      'Min:  555€',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kDarkGreyColor,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '★ 4.2',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: kRatingColor,
                                  ),
                                ),
                                Text(
                                  '(135)',
                                  style: TextStyle(
                                    fontSize: 14,
                                   // fontWeight: FontWeight.w800,
                                    color: kDarkGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FloristDetails()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 12, bottom: 0, left: 10, right: 10),
                child: Card(
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                  elevation: 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            //height: 180,
                            height: _screenSize.height / 4.5,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                              child: Image.asset(
                                'images/flower2.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10.0,
                            left: 12.0,
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              margin: EdgeInsets.only(top:10.0),
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 1.8),
                                  //borderRadius: BorderRadius.circular(5.0),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('images/florist_logo2.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.0),
                      Padding(
                        padding: EdgeInsets.only(top: 4.0, left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Florist Name',
                                  style: TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 0.2,
                                    color: kDarkColor,
                                    //  fontFamily: 'Montserrat-SB',
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 2.0),
                                Row(
                                  children: <Widget>[
                                    *//*Text(
                                      'Bouquets',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kDarkGreyColor,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(width: 15.0,),*//*
                                    Text(
                                      'Min:  555€',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kDarkGreyColor,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '★ 4.2',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: kRatingColor,
                                  ),
                                ),
                                Text(
                                  '(135)',
                                  style: TextStyle(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.w800,
                                    color: kDarkGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
            ),*/

          ],
        ),
      ),
    );
  }
}
