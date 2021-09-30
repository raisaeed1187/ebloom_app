import 'package:flutter/material.dart';
import 'package:ebloom_app/Config/app_config.dart';

class OrderDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 15,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                margin: EdgeInsets.all(0),
                elevation: 0.5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      width: _screenSize.height / 8.5,
                      height: _screenSize.height / 10.5,

                      decoration: BoxDecoration(
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
                              "ΖΑΜΙΑ ΜΙΚΡΗ ",
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
                              constraints: BoxConstraints(maxWidth: _screenSize.width / 1.5,),
                              child: Text(
                                "Glyfada, Greece",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                textScaleFactor: 0.96,
                                style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Container(
                              child: Text(
                                "30-09-2021",
                                textAlign: TextAlign.left,
                                textScaleFactor: 0.96,
                                style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                              ),
                            ),
                            SizedBox(height: 5,),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),


              SizedBox(height: 15.0,),
              Divider(color: Color(0xffe6e6e6).withOpacity(0.5), thickness: 8,),
              SizedBox(height: 15,),

              Text(
                "Summary",
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



              SummaryText(supportingText: 'Total Item Count', mainText: '6',),
              SummaryText(supportingText: 'Total Item Cost', mainText: '425.00\€',),
              SummaryText(supportingText: 'Discount', mainText: '0.00\€',),
              SummaryText(supportingText: 'Coupon Discount', mainText: '5.00\€',),


              Divider(thickness: 1.0, color: kLightGreyColor,),
              SizedBox(height: 10.0,),


              SummaryText(supportingText: 'Sub Total', mainText: '420.00\€',),
              SummaryText(supportingText: 'Tax (5%)', mainText: '21.00\€',),
              SummaryText(supportingText: 'Shipping Cost', mainText: '10.00\€',),

              Divider(thickness: 1.0, color: kLightGreyColor,),
              SizedBox(height: 10.0,),

              SummaryText(supportingText: 'Total', mainText: '450.00\€',),

              SizedBox(height: 5.0,),
              Divider(color: Color(0xffe6e6e6).withOpacity(0.5), thickness: 8,),
              SizedBox(height: 15,),

              Text(
                "Items",
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
              /*Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                margin: EdgeInsets.all(0),
                elevation: 0.5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      width: _screenSize.height / 10,
                      height: _screenSize.height / 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('images/rose2.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      flex:3,
                      child: Container(

                        padding: const EdgeInsets.only(top: 5.0, bottom: 15.0, right: 8, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Item Name ",
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

                                  SizedBox(height: 8,),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: _screenSize.width / 2.2,),
                                    child: Text(
                                      "Any comment here Any comment here Any comment here",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      textScaleFactor: 0.96,
                                      maxLines: 2,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                  ),

                                  SizedBox(height: 8,),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: _screenSize.width / 2.2,),
                                    child: Text(
                                      "No Greeting Card",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      textScaleFactor: 0.96,
                                      maxLines: 2,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Flexible(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '50 \€',
                                    textScaleFactor: 0.96,
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 0.1,
                                      color: kDarkColor,
                                      //  fontFamily: 'Montserrat-SB',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                                    child: Text(
                                      'x 4',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Montserrat-M',
                                        color: kDarkColor,
                                      ),
                                    ),

                                    decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      border: Border.all(color: kLightGreyColor, width: 0.8,),
                                      borderRadius: BorderRadius.circular(4),
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
              ),*/
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3.0,
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2.0)
                  ],
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(color: kLightGreyColor, width: 0.1,),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      width: _screenSize.height / 10,
                      height: _screenSize.height / 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('images/rose2.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      flex:3,
                      child: Container(

                        padding: const EdgeInsets.only(top: 5.0, bottom: 15.0, right: 8, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Item Name ",
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

                                  SizedBox(height: 8,),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: _screenSize.width / 2.2,),
                                    child: Text(
                                      "Any comment here Any comment here Any comment here",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      textScaleFactor: 0.96,
                                      maxLines: 2,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                  ),

                                  SizedBox(height: 8,),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: _screenSize.width / 2.2,),
                                    child: Text(
                                      "No Greeting Card",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      textScaleFactor: 0.96,
                                      maxLines: 2,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Flexible(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '50 \€',
                                    textScaleFactor: 0.96,
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 0.1,
                                      color: kDarkColor,
                                      //  fontFamily: 'Montserrat-SB',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                                    child: Text(
                                      'x 4',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Montserrat-M',
                                        color: kDarkColor,
                                      ),
                                    ),

                                    decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      border: Border.all(color: kLightGreyColor, width: 0.8,),
                                      borderRadius: BorderRadius.circular(4),
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

              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3.0,
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2.0)
                  ],
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(color: kLightGreyColor, width: 0.1,),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      width: _screenSize.height / 10,
                      height: _screenSize.height / 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('images/rose2.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      flex:3,
                      child: Container(

                        padding: const EdgeInsets.only(top: 5.0, bottom: 15.0, right: 8, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Item Name ",
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

                                  SizedBox(height: 8,),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: _screenSize.width / 2.2,),
                                    child: Text(
                                      "Any comment here Any comment here Any comment here",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      textScaleFactor: 0.96,
                                      maxLines: 2,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                  ),

                                  SizedBox(height: 8,),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: _screenSize.width / 2.2,),
                                    child: Text(
                                      "No Greeting Card",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      textScaleFactor: 0.96,
                                      maxLines: 2,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Flexible(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '50 \€',
                                    textScaleFactor: 0.96,
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 0.1,
                                      color: kDarkColor,
                                      //  fontFamily: 'Montserrat-SB',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                                    child: Text(
                                      'x 4',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Montserrat-M',
                                        color: kDarkColor,
                                      ),
                                    ),

                                    decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      border: Border.all(color: kLightGreyColor, width: 0.8,),
                                      borderRadius: BorderRadius.circular(4),
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
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3.0,
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2.0)
                  ],
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(color: kLightGreyColor, width: 0.1,),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      width: _screenSize.height / 10,
                      height: _screenSize.height / 12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage('images/rose2.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Flexible(
                      flex:3,
                      child: Container(

                        padding: const EdgeInsets.only(top: 5.0, bottom: 15.0, right: 8, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Item Name ",
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

                                  SizedBox(height: 8,),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: _screenSize.width / 2.2,),
                                    child: Text(
                                      "Any comment here Any comment here Any comment here",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      textScaleFactor: 0.96,
                                      maxLines: 2,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                  ),

                                  SizedBox(height: 8,),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: _screenSize.width / 2.2,),
                                    child: Text(
                                      "No Greeting Card",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      textScaleFactor: 0.96,
                                      maxLines: 2,
                                      style: TextStyle(color: kGreyColor, fontSize: 14.0, fontWeight: FontWeight.w400,),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Flexible(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '50 \€',
                                    textScaleFactor: 0.96,
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 0.1,
                                      color: kDarkColor,
                                      //  fontFamily: 'Montserrat-SB',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                                    child: Text(
                                      'x 4',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Montserrat-M',
                                        color: kDarkColor,
                                      ),
                                    ),

                                    decoration: BoxDecoration(
                                      color: kBackgroundColor,
                                      border: Border.all(color: kLightGreyColor, width: 0.8,),
                                      borderRadius: BorderRadius.circular(4),
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


              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}

class SummaryText extends StatelessWidget {

  SummaryText({required this.supportingText, required this.mainText,});
  final String supportingText, mainText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              supportingText,
              textScaleFactor: 0.95,
              style: TextStyle(
                fontSize: 16,
                //letterSpacing: 0.1,
                color: kDarkColor,
                fontFamily: 'Montserrat-M',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              mainText,
              textScaleFactor: 0.95,
              style: TextStyle(
                fontSize: 16,
                //letterSpacing: 0.1,
                color: kDarkColor,
                fontFamily: 'Montserrat-M',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
