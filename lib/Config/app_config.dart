import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kMainColor = Color(0xffb1687f);
const kBackgroundColor = Color(0xFFffffff);
const kLightGreyColor = Color(0xFFd9d9d9);
const kGreyColor = Colors.black38;
const kDarkColor = Color(0xFF333333);
const kDarkGreyColor = Color(0xFFbfbfbf);
const kRatingColor = Colors.amber;



InputDecoration TextfieldDecoration() {
  return InputDecoration(
    border: InputBorder.none,
    prefixIcon: Icon(Icons.search, color: kGreyColor, size: 22.0),
    contentPadding: EdgeInsets.only(left: 15.0, top: 15),
    hintText: 'Search',
    filled: true,
    fillColor: Color(0xFFf2f2f2).withOpacity(0.8),
    hintStyle: TextStyle(
      color: kGreyColor,
      fontFamily: 'Montserrat-M',
      fontSize: 15.0,
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFf2f2f2))),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: kLightGreyColor)),

  );
}


class Utilities
{
  customAlertDialog(String titleText, List<Widget> body, context) => Dialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 25),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)), //this right here
      child: Container(
        width: double.infinity,
        child: Wrap(
          children: [
            Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  //border: Border.all(color: kMainColor),
                  border: Border(bottom: BorderSide(color: kMainColor)),
                    color: Colors.transparent,
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10),
                    //     topRight: Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titleText,
                      textScaleFactor: 0.90,
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 0.1,
                        color: kMainColor,
                        //  fontFamily: 'Montserrat-SB',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),

                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.cancel,
                            color: kMainColor))
                  ],
                )),
            SingleChildScrollView(
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: body.length,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.03,
                      horizontal: MediaQuery.of(context).size.height * 0.02),
                  itemBuilder: (context, index) => body[index],
                ),
              ),
            )
          ],
        ),
      ),
  );

  buttonWidget(String btnText, {icon}) => GestureDetector(
    //onTap:()=>  onTap,
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: icon==null? Text(
        btnText,
        textScaleFactor: 1.3,
        style: TextStyle(
            color:kBackgroundColor,
            fontWeight: FontWeight.w400),
      ):Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text(
          btnText,
          textScaleFactor: 1.3,
          style: TextStyle(
              color: kBackgroundColor,
              fontWeight: FontWeight.w400),
        ),icon
      ],),
    ),
  );
}