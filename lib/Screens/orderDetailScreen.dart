import 'package:flutter/material.dart';
import 'package:ebloom_app/Config/app_config.dart';

class OrderDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Total Item Count',
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
                    '6',
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
              SizedBox(height: 10.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Total Item Cost',
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
                    '425.00\€',
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
              SizedBox(height: 10.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Discount',
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
                    '0.00 \€',
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
              SizedBox(height: 10.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Coupon Discount',
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
                    '5.00 \€',
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
              SizedBox(height: 10.0,),

              Divider(thickness: 1.0, color: kLightGreyColor,),

              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Sub Total',
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
                    '420.00 \€',
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
              SizedBox(height: 10.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Tax (5%)',
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
                    '21.00 \€',
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
              SizedBox(height: 10.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Shipping Cost',
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
                    '10 \€',
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
              SizedBox(height: 10.0,),

              Divider(thickness: 1.0, color: kLightGreyColor,),

              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    'Total',
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
                    '450.00 \€',
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
              SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }
}
