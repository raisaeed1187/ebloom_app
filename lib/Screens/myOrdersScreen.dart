import 'package:ebloom_app/Screens/inProgressOrders.dart';
import 'package:ebloom_app/Screens/mainHomepage.dart';
import 'package:ebloom_app/Screens/profilePage.dart';
import 'package:ebloom_app/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Config/app_config.dart';
import 'package:flutter/cupertino.dart';

import 'orderDetailScreen.dart';

class MyOrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: true,
        elevation: 3,
        title: Text('My Orders', style: TextStyle(color: kDarkColor),),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: kDarkColor,)),

      ),

      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints(maxHeight: 180.0),
              margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TabBar(
                  //isScrollable: false,
                  indicatorColor: kMainColor,
                  labelColor: kBackgroundColor,
                  labelStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  unselectedLabelColor: kDarkColor,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kMainColor,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          //border: Border.all(color: Colors.redAccent, width: 1),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "In Progress",
                            textScaleFactor: 0.96,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0, ),),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Completed",
                            textScaleFactor: 0.96,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0, ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.circular(8.0),

              ),
            ),
            Expanded(
              child: TabBarView(
                //physics: NeverScrollableScrollPhysics(),
                children: [
                  InProgressOrders(),

                  InProgressOrders(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
