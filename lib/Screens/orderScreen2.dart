import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Widgets/DateTimePicker.dart';

import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:ebloom_app/Widgets/wModel.dart';


class OrderScreen2 extends StatefulWidget {
  @override
  _OrderScreen2State createState() => _OrderScreen2State();
}

class _OrderScreen2State extends State<OrderScreen2> {
  var model = TimingModel();
  int itemSelectedQuantity = 1;
  double itemPrice = 200, couponDiscount = 50;

  List<String> senderType = ['Private', 'Company',];
  String selectedSenderType = 'Private';

  List<String> invoiceType = ['Receipt', 'Invoice',];
  String selectedInvoiceType = 'Receipt';

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          automaticallyImplyLeading: true,
          elevation: 3,
          title: Text('Checkout', style: TextStyle(color: kDarkColor),),
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

                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 5.0, left: 10.0, top: 3.0, bottom: 3.0,),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10.0),
                                    Text(
                                      "Address",
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
                                    SizedBox(height: 2,),
                                    Text(
                                      "Glyfada, Greece",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios, color: kGreyColor, size: 18.0,),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      border: Border.all(color: kLightGreyColor, width: 0.8,),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Container(
                        width: _screenSize.width / 3,
                        padding: EdgeInsets.only(right: 5.0, left: 10.0, top: 3.0, bottom: 3.0,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.add, color: kGreyColor, size: 18.0,),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 20.0),
                                        Text(
                                          "Coupon",
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                        ),
                                        SizedBox(height: 20.0),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          border: Border.all(color: kLightGreyColor, width: 0.8,),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: _screenSize.width / 1.78,
                        padding: EdgeInsets.only(right: 5.0, left: 10.0, top: 3.0, bottom: 3.0,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 10.0),
                                        Text(
                                          "Payment Method",
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                        ),
                                        SizedBox(height: 2,),
                                        Text(
                                          "Card",
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
                                        SizedBox(height: 10.0),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, color: kGreyColor, size: 18.0,),
                                ],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          border: Border.all(color: kLightGreyColor, width: 0.8,),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 5.0, left: 10.0, top: 3.0, bottom: 3.0,),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10.0),
                                    Text(
                                      "Payment Method",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      "Card",
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
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios, color: kGreyColor, size: 18.0,),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      border: Border.all(color: kLightGreyColor, width: 0.8,),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),

                  SizedBox(height: 15,),
                  Divider(color: Color(0xffe6e6e6).withOpacity(0.5), thickness: 8,),

                  SizedBox(height: 15,),
                  Text(
                    "Recipient Details",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.1,
                      color: kDarkColor,
                      //  fontFamily: 'Montserrat-SB',
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15,),


                  Text(
                    "Full Name",
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
                  SizedBox(height: 6,),
                  TextFormField(
                    style: TextStyle(color: kDarkColor),
                    keyboardType: TextInputType.text,
                    // validator: validateEmail,
                    onChanged: (value) {
                    },
                    decoration: new InputDecoration(
                      hintText: 'Your Name',
                      hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                      fillColor: kBackgroundColor,
                      filled: true,
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(16),
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
                    "Mobile or Landline",
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
                  SizedBox(height: 6,),
                  TextFormField(
                    style: TextStyle(color: kDarkColor),
                    keyboardType: TextInputType.text,
                    // validator: validateEmail,
                    onChanged: (value) {
                    },
                    decoration: new InputDecoration(
                      hintText: 'e.g 69xxxxxxxx',
                      hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                      fillColor: kBackgroundColor,
                      filled: true,
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(16),
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


                  /*Text(
                    "Doorbell Name",
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
                  SizedBox(height: 6,),
                  TextFormField(
                    style: TextStyle(color: kDarkColor),
                    keyboardType: TextInputType.text,
                    // validator: validateEmail,
                    onChanged: (value) {
                    },
                    decoration: new InputDecoration(
                      hintText: 'Doorbell Name',
                      hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                      fillColor: kBackgroundColor,
                      filled: true,
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(16),
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
                    "Floor",
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
                  SizedBox(height: 6,),
                  TextFormField(
                    style: TextStyle(color: kDarkColor),
                    keyboardType: TextInputType.text,
                    // validator: validateEmail,
                    onChanged: (value) {
                    },
                    decoration: new InputDecoration(
                      hintText: 'e.g 1',
                      hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                      fillColor: kBackgroundColor,
                      filled: true,
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 0.8, color: kLightGreyColor)),

                    ),
                  ),
                  SizedBox(height: 15,),*/


                  Row(
                    children: [
                      Container(
                        width: _screenSize.width/2.24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Doorbell Name",
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
                            SizedBox(height: 6,),
                            TextFormField(
                              style: TextStyle(color: kDarkColor),
                              keyboardType: TextInputType.text,
                              // validator: validateEmail,
                              onChanged: (value) {
                              },
                              decoration: new InputDecoration(
                                hintText: 'Doorbell Name',
                                hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                fillColor: kBackgroundColor,
                                filled: true,
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(16),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                  borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(width: 0.8, color: kLightGreyColor)),

                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: _screenSize.width/2.24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Floor",
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
                            SizedBox(height: 6,),
                            TextFormField(
                              style: TextStyle(color: kDarkColor),
                              keyboardType: TextInputType.text,
                              // validator: validateEmail,
                              onChanged: (value) {
                              },
                              decoration: new InputDecoration(
                                hintText: 'e.g 1',
                                hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                fillColor: kBackgroundColor,
                                filled: true,
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(16),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                  borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(width: 0.8, color: kLightGreyColor)),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),

                  Text(
                    "Comments",
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
                  SizedBox(height: 6,),
                  TextFormField(
                    style: TextStyle(color: kDarkColor),
                    keyboardType: TextInputType.text,
                    maxLines: 3,
                    // validator: validateEmail,
                    onChanged: (value) {
                    },
                    decoration: new InputDecoration(
                      hintText: 'Write your comment here',
                      hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                      fillColor: kBackgroundColor,
                      filled: true,
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 0.8, color: kLightGreyColor)),

                    ),
                  ),
                  SizedBox(height: 25,),


                  Divider(color: Color(0xffe6e6e6).withOpacity(0.5), thickness: 8,),

                  SizedBox(height: 20,),
                  Text(
                    "Sender Details",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.1,
                      color: kDarkColor,
                      //  fontFamily: 'Montserrat-SB',
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15,),



                  Text(
                    "Sender",
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
                  SizedBox(height: 6,),
                  Container(
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      border: Border.all(color: kLightGreyColor, width: 0.8,),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: ListTileTheme(
                      dense: true,
                      child: ExpansionTile(
                          key: GlobalKey(),
                          tilePadding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 0, top: 0),

                          title: Text(
                            selectedSenderType,
                            style: TextStyle(
                              color: kGreyColor,
                              fontSize:  14,
                            ),
                          ),
                          children: senderType
                              .map((e) => ListTile(
                              onTap: () => setState(
                                    () => selectedSenderType = e,
                              ),
                              dense: true,
                              tileColor: kBackgroundColor,
                              title: Text(e,
                                style: TextStyle(
                                  color: kDarkColor, fontSize:  14,
                                ),
                              )))
                              .toList()),
                    ),
                  ),
                  SizedBox(height: 15,),


                  Text(
                    selectedSenderType == 'Private' ? "Full Name" : "Company Name",
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
                  SizedBox(height: 6,),
                  TextFormField(
                    style: TextStyle(color: kDarkColor),
                    keyboardType: TextInputType.text,
                    // validator: validateEmail,
                    onChanged: (value) {
                    },
                    decoration: new InputDecoration(
                      hintText: selectedSenderType == 'Private' ? "Your Name" : "Company Name",
                      hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                      fillColor: kBackgroundColor,
                      filled: true,
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(16),
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
                    "Email",
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
                  SizedBox(height: 6,),
                  TextFormField(
                    style: TextStyle(color: kDarkColor),
                    keyboardType: TextInputType.emailAddress,
                    // validator: validateEmail,
                    onChanged: (value) {
                    },
                    decoration: new InputDecoration(
                      hintText: 'Your email',
                      hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                      fillColor: kBackgroundColor,
                      filled: true,
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(16),
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
                    "Phone",
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
                  SizedBox(height: 6,),
                  TextFormField(
                    style: TextStyle(color: kDarkColor),
                    keyboardType: TextInputType.phone,
                    // validator: validateEmail,
                    onChanged: (value) {
                    },
                    decoration: new InputDecoration(
                      hintText: 'Phone',
                      hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                      fillColor: kBackgroundColor,
                      filled: true,
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 0.8, color: kLightGreyColor)),

                    ),
                  ),
                  SizedBox(height:25,),




                  Divider(color: Color(0xffe6e6e6).withOpacity(0.5), thickness: 8,),

                  SizedBox(height: 20,),
                  Text(
                    "Delivery Time ",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.1,
                      color: kDarkColor,
                      //  fontFamily: 'Montserrat-SB',
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 15,),

                  buildScrollRow(context),

                  SizedBox(height: 20,),

                  Divider(color: Color(0xffe6e6e6).withOpacity(0.5), thickness: 8,),

                  SizedBox(height: 20,),
                  Text(
                    "Receipt / Invoice",
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.1,
                      color: kDarkColor,
                      //  fontFamily: 'Montserrat-SB',
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),

                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      border: Border.all(color: kLightGreyColor, width: 0.8,),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: ListTileTheme(
                      dense: true,
                      child: ExpansionTile(
                          key: GlobalKey(),
                          tilePadding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 0, top: 0),

                          title: Text(
                            selectedInvoiceType,
                            style: TextStyle(
                              color: kGreyColor,
                              fontSize:  14,
                            ),
                          ),
                          children: invoiceType
                              .map((e) => ListTile(
                              onTap: () => setState(
                                    () => selectedInvoiceType = e,
                              ),
                              dense: true,
                              tileColor: kBackgroundColor,
                              title: Text(e,
                                style: TextStyle(
                                  color: kDarkColor, fontSize:  14,
                                ),
                              )))
                              .toList()),
                    ),
                  ),
                  SizedBox(height: 15,),

                  selectedInvoiceType == 'Invoice' ?
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Company Name",
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.text,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: "Company Name",
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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
                        "VAT ",
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.text,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: 'VAT ',
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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
                        "Type of Business",
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.text,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: "Type of Business",
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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
                        "ΔΟΥ",
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.text,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: 'ΔΟΥ',
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.text,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: "Address",
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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
                        "Area",
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.text,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: 'Area',
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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
                        "Τκ",
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.text,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: "Τκ",
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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
                        "Phone",
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.phone,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: 'Phone',
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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
                        "Invoice Sending Email",
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
                      SizedBox(height: 6,),
                      TextFormField(
                        style: TextStyle(color: kDarkColor),
                        keyboardType: TextInputType.emailAddress,
                        // validator: validateEmail,
                        onChanged: (value) {
                        },
                        decoration: new InputDecoration(
                          hintText: 'Area',
                          hintStyle: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          fillColor: kBackgroundColor,
                          filled: true,
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(16),
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

                    ],
                  )
                  : Container(),
                  SizedBox(height: 10,),


                  Button(
                    onTap: (){},
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

  Widget buildScrollRow(BuildContext context) {
    return GestureDetector(
      onTap: () => showMaterialScrollPicker<PickerModel>(
        context: context,
        title: 'Pick Delivery Time',
        showDivider: false,
        maxLongSide: 500,
        items: TimingModel.deliveryTimings,
        selectedItem: model.selectedTime,
        onChanged: (value) =>
            setState(() => model.selectedTime = value),
        onCancelled: () => print('Scroll Picker cancelled'),
        onConfirmed: () => print('Scroll Picker confirmed'),
      ),
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(right: 5.0, left: 10.0, top: 3.0, bottom: 3.0,),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 14.0),
                          Text(
                            '${model.selectedTime}',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                          ),
                          SizedBox(height: 14.0),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: kGreyColor, size: 18.0,),
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            border: Border.all(color: kLightGreyColor, width: 0.8,),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
    );
}

}
