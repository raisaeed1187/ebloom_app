//import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Widgets/DateTimePicker.dart';
import 'package:ebloom_app/Widgets/search_widget.dart';

import 'orderScreen2.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int _quantity = 1;
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,

        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          automaticallyImplyLeading: true,
          elevation: 3,
          title: Text('Order Details', style: TextStyle(color: kDarkColor),),
          centerTitle: true,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: kDarkColor,)),

        ),

        body: SingleChildScrollView(
            child: Container(
              // height: MediaQuery.of(context).size.height-67,
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'Your Cart',
                    textScaleFactor: 1.6,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kMainColor, fontWeight: FontWeight.w500,),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Container(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 10.0, right: 8, left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ΖΑΜΙΑ ΜΙΚΡΗ",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 0.1,
                                color: kDarkColor,
                                //  fontFamily: 'Montserrat-SB',
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),

                            InkWell(
                              onTap: () {
                              },
                              child: Icon(Icons.close, color: kDarkColor, size: 20.0,),
                            ),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width:35,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xffe6e6e6).withOpacity(0.4),
                                    //border: Border.all(color: Color(0xffe6e6e6).withOpacity(0.4),),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if(_quantity == 1) return;
                                        _quantity -= 1;
                                      });
                                    },
                                    child: Icon(Icons.remove, color: kGreyColor, size: 20.0,),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                  child: Text(_quantity.toString(), style: TextStyle(fontSize: 16.0,  fontFamily: 'Montserrat-M',),),
                                ),

                                Container(
                                  width: 35,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xffe6e6e6).withOpacity(0.4),
                                    //border: Border.all(color: kDarkColor)
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _quantity += 1;
                                      });
                                    },
                                    child: Icon(Icons.add, color: kGreyColor, size: 20.0,),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "50 €",
                              textAlign: TextAlign.left,
                              style: TextStyle(color:kDarkColor , fontSize: 14.0, fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),

                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: kLightGreyColor, width: 0.8,)),
                      // borderRadius: BorderRadius.circular(4),
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Container(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 10.0, right: 8, left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ΖΑΜΙΑ ΜΙΚΡΗ",
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 0.1,
                                color: kDarkColor,
                                //  fontFamily: 'Montserrat-SB',
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),

                            InkWell(
                              onTap: () {
                              },
                              child: Icon(Icons.close, color: kDarkColor, size: 20.0,),
                            ),
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width:35,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xffe6e6e6).withOpacity(0.4),
                                    //border: Border.all(color: Color(0xffe6e6e6).withOpacity(0.4),),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if(_quantity == 1) return;
                                        _quantity -= 1;
                                      });
                                    },
                                    child: Icon(Icons.remove, color: kGreyColor, size: 20.0,),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                  child: Text(_quantity.toString(), style: TextStyle(fontSize: 16.0,  fontFamily: 'Montserrat-M',),),
                                ),

                                Container(
                                  width: 35,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xffe6e6e6).withOpacity(0.4),
                                    //border: Border.all(color: kDarkColor)
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _quantity += 1;
                                      });
                                    },
                                    child: Icon(Icons.add, color: kGreyColor, size: 20.0,),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "50 €",
                              textAlign: TextAlign.left,
                              style: TextStyle(color:kDarkColor , fontSize: 14.0, fontWeight: FontWeight.w800,),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),

                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: kLightGreyColor, width: 0.8,)),
                      // borderRadius: BorderRadius.circular(4),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Text('Total Amount',
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.1,
                                color: kDarkColor,
                                //  fontFamily: 'Montserrat-SB',
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.left,
                               )
                        ),
                        Expanded(
                            child: Text(
                                '100 €',
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.1,
                                color: kDarkColor,
                                //  fontFamily: 'Montserrat-SB',
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.end,
                            )
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),



                  Button(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OrderScreen2()));
                    },
                    buttonText: 'ORDER',
                    height:  0.065,
                  ),

                  SizedBox(height: 15.0),
                ],
              ),
            ))
    );
  }

  InputDecoration textFieldDecoration() {
    return new InputDecoration(
      isDense: true, // Added this
      contentPadding: EdgeInsets.all(15),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: kDarkColor),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: kMainColor)),
    );
  }
}
