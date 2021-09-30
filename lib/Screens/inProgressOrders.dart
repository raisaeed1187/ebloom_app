import 'package:flutter/material.dart';
import 'package:ebloom_app/Config/app_config.dart';
import 'orderDetailScreen.dart';

class InProgressOrders extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailScreen()));
              },
              child: Container(
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
            ),

            SizedBox(height: 12,),

            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailScreen()));
              },
              child: Container(
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
            ),

            SizedBox(height: 12,),

            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailScreen()));
              },
              child: Container(
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
            ),

            SizedBox(height: 12,),

            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailScreen()));
              },
              child: Container(
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
            ),

            SizedBox(height: 12,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailScreen()));
              },
              child: Container(
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
            ),

            SizedBox(height: 12,),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailScreen()));
              },
              child: Container(
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
            ),

            SizedBox(height: 12,),

          ],
        ),
      ),
    );
  }
}
