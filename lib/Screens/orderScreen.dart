import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Widgets/DateTimePicker.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  int itemSelectedQuantity = 1;
  double itemPrice = 200, couponDiscount = 50;

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
                Card(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: kMainColor,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Product',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Quantity',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Price',
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: kBackgroundColor, borderRadius: BorderRadius.all(Radius.circular(5))),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: Text('ABC Product'),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //this will update the model, so it will also update the previous page


                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if(itemSelectedQuantity == 1) return;
                                              itemSelectedQuantity--;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.white,
                                            padding:
                                            const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                                            child: Text('-', textScaleFactor: 1.5),
                                          )),
                                      SizedBox(width: 5),
                                      Text('$itemSelectedQuantity'),
                                      SizedBox(width: 5),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              itemSelectedQuantity++;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.white,
                                            padding:
                                            const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                                            child: Text('+', textScaleFactor: 1.5),
                                          )),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child:
                                  Text('\$${itemPrice * itemSelectedQuantity}', textAlign: TextAlign.end),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text('Discount')),
                                Expanded(
                                    child: Text('\$ $couponDiscount', textAlign: TextAlign.end)),
                              ],
                            ),
                            SizedBox(height: 8),
                            Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Text('Total Amount',
                                        style: TextStyle(fontWeight: FontWeight.bold))),
                                Expanded(
                                    child: Text(
                                        '\$ ${(itemPrice * itemSelectedQuantity) + couponDiscount}.00',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(fontWeight: FontWeight.bold))),
                              ],
                            ),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),
                    ],
                  ),
                ),


                SizedBox(height: 10,),
                Card(
                  elevation: 2.5,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery Time',
                              style: TextStyle(
                                color: kDarkColor,
                                fontWeight: FontWeight.w400,
                                fontSize: _screenSize.width / 18,
                              ),
                            ),
                            SizedBox(
                              height: 18.0,
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Select Date'),

                                Icon(Icons.calendar_today_outlined, size: 20.0,),
                              ],
                            ),
                            SizedBox(height: 8),
                            /*BasicDateField(),*/

                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Select Time'),

                                Icon(Icons.access_time, size: 20.0,),
                              ],
                            ),

                            SizedBox(
                              height: 6.0,
                            ),
                          ],
                        )),
                  ),
                ),

                SizedBox(height: 10,),
                Card(
                  elevation: 2.5,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recipient Details',
                              style: TextStyle(
                                color: kDarkColor,
                                fontWeight: FontWeight.w400,
                                fontSize: _screenSize.width / 18,
                              ),
                            ),
                            SizedBox(
                              height: 18.0,
                            ),

                            Text('Full Name'),
                            SizedBox(height: 8),
                            TextFormField(
                              style: TextStyle(
                                color: kDarkColor,
                                fontSize: _screenSize.width / 25,
                              ),
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                //name = value;
                              },
                              decoration: textFieldDecoration(),
                            ),

                            SizedBox(height: 15),
                            Text('Mobile or Landline'),
                            SizedBox(height: 8),
                            TextFormField(
                              style: TextStyle(
                                color: kDarkColor,
                                fontSize: _screenSize.width / 25,
                              ),
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                              },
                              decoration: textFieldDecoration(),
                            ),

                            SizedBox(height: 15),
                            Text('Doorbell Name'),
                            SizedBox(height: 8),
                            TextFormField(
                              style: TextStyle(
                                color: kDarkColor,
                                fontSize: _screenSize.width / 25,
                              ),
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                              },
                              decoration: textFieldDecoration(),
                            ),

                            SizedBox(height: 15),
                            Text('Floor'),
                            SizedBox(height: 8),
                            TextFormField(
                              style: TextStyle(
                                color: kDarkColor,
                                fontSize: _screenSize.width / 25,
                              ),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                              },
                              decoration: textFieldDecoration(),
                            ),

                            SizedBox(height: 15),
                            Text('Comments'),
                            SizedBox(height: 8),
                            TextFormField(
                              style: TextStyle(
                                color: kDarkColor,
                                fontSize: _screenSize.width / 25,
                              ),
                              keyboardType: TextInputType.text,
                              maxLines: 3,
                              onChanged: (value) {
                              },
                              decoration: textFieldDecoration(),
                            ),


                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        )),
                  ),
                ),

                SizedBox(height: 10,),
                Card(
                  elevation: 2.5,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sender Details',
                              style: TextStyle(
                                color: kDarkColor,
                                fontWeight: FontWeight.w400,
                                fontSize: _screenSize.width / 18,
                              ),
                            ),
                            SizedBox(
                              height: 18.0,
                            ),

                            Text('Full Name'),
                            SizedBox(height: 8),
                            TextFormField(
                              style: TextStyle(
                                color: kDarkColor,
                                fontSize: _screenSize.width / 25,
                              ),
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                //name = value;
                              },
                              decoration: textFieldDecoration(),
                            ),

                            SizedBox(height: 15),
                            Text('Phone'),
                            SizedBox(height: 8),
                            TextFormField(
                              style: TextStyle(
                                color: kDarkColor,
                                fontSize: _screenSize.width / 25,
                              ),
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                              },
                              decoration: textFieldDecoration(),
                            ),

                            SizedBox(height: 15),
                            Text('Email'),
                            SizedBox(height: 8),
                            TextFormField(
                              style: TextStyle(
                                color: kDarkColor,
                                fontSize: _screenSize.width / 25,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                              },
                              decoration: textFieldDecoration(),
                            ),

                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        )),
                  ),
                ),

                SizedBox(height: 10.0),

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
}
