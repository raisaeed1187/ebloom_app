import 'package:ebloom_app/Config/app_config.dart';
import 'package:ebloom_app/Screens/orderScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ebloom_app/Widgets/button.dart';

import 'floristDetails.dart';


class ProductDetails extends StatefulWidget {

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  int _quantity = 1;
  List<DynamicWidget> listDynamic = [];
  List<String> data = [];

  addDynamic() {
    if (data.length != 0) {
      // floatingIcon = new Icon(Icons.add);

      data = [];
      listDynamic = [];
      print('already added');
    }
    setState(() {});
    if (listDynamic.length >= 1) {
      return;
    }
    listDynamic.add(new DynamicWidget());
  }

  deleteDynamic() {
    if (data.length == 0) {
      //floatingIcon = new Icon(Icons.add);

      data = [];
      listDynamic = [];
      print('already deleted');
    }
    setState(() {});
    if (listDynamic.length == 1) {
      return;
    }
    listDynamic.remove(new DynamicWidget());
  }

    @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    Widget dynamicTextField = new ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: listDynamic.length,
      itemBuilder: (_, index) => listDynamic[index],
    );

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: _screenSize.height/ 1.18,
                width: double.infinity,
                child: Expanded(
                  flex: 3,
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
                                'images/bouquet3.jpg',
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Flexible(
                                    flex: 3,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        //SizedBox(width: 10.0),
                                        Flexible(
                                          flex: 3,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'ΖΑΜΙΑ ΜΙΚΡΗ',
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
                                              Text(
                                                "ΛΟΥΛΟΥΔΙΑ ΕΠΟΧΗΣ ΣΕ ΔΙΑΦΟΡΑ ΧΡΩΜΑΤΑ",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat-R',),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Text(
                                      '50 €',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: 'Montserrat-M',
                                        color: kDarkColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: _screenSize.height * 0.025,
                              ),
                              Divider(
                                color:Color(0xffe6e6e6).withOpacity(0.4),
                                thickness: 6.0,
                                //height: 15,
                              ),
                              SizedBox(
                                height: _screenSize.height * 0.006,
                              ),


                              Container(
                                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0),
                                //color: Color(0xfff5f5f5).withOpacity(0.6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Do you want us to pay attention to something?",
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
                                    TextFormField(
                                      style: TextStyle(color: kDarkColor),
                                      keyboardType: TextInputType.text,
                                      maxLines: 3,
                                      // validator: validateEmail,
                                      onChanged: (value) {
                                      },
                                      decoration: new InputDecoration(
                                        hintText: 'Your Comment',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        fillColor: Color(0xffe6e6e6).withOpacity(0.4),
                                        filled: true,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffe6e6e6).withOpacity(0.4),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xffe6e6e6).withOpacity(0.4)),
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        ),

                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0),
                                //color: Color(0xfff5f5f5).withOpacity(0.6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Would you like to add a greeting card? ",
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
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: addDynamic,
                                          child: Text('YES',
                                            textScaleFactor: 0.96,
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 0.1,
                                              color: kMainColor,
                                              //  fontFamily: 'Montserrat-SB',
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),

                                        SizedBox(width: 12,),
                                        Text('/',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: kMainColor, fontSize: 16.0, fontFamily: 'Montserrat-SB',),
                                        ),
                                        SizedBox(width: 12,),

                                        GestureDetector(
                                          onTap: deleteDynamic,
                                          child: Text('NO',
                                            textScaleFactor: 0.96,
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 0.1,
                                              color: kMainColor,
                                              //  fontFamily: 'Montserrat-SB',
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),


                              Container(
                                //height: 100,
                                height: _screenSize.height * 0.12,
                                //color: kMainColor,
                                width: double.infinity,
                                child:data.length == 0 ? dynamicTextField : Container(),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4.0,
                        color: Colors.black54.withOpacity(0.04),
                      offset: const Offset(0, -4),
                        spreadRadius: 0.01,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width:40,
                          height: 35,
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
                          child: Text(_quantity.toString(), style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),),
                        ),

                        Container(
                          width: 40,
                          height: 35,
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

                    // ignore: deprecated_member_use
                    FlatButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FloristDetails(type: 1)));
                      },
                      minWidth: _screenSize.width/ 3.6,
                      height: _screenSize.width * 0.098,
                      child: Text('Add',
                        style: TextStyle(fontSize: 16.0, fontFamily: 'Montserrat-SB'
                          ),
                      ),
                      textColor: kBackgroundColor,
                      color: kMainColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
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



class DynamicWidget extends StatelessWidget {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new TextFormField(
        style: TextStyle(color: kDarkColor),
        keyboardType: TextInputType.text,
        maxLines: 3,
        onChanged: (value) {
        },
        decoration: new InputDecoration(
          hintText: 'Your Comment',
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Color(0xffe6e6e6).withOpacity(0.4),
          filled: true,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffe6e6e6).withOpacity(0.4),
            ),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffe6e6e6).withOpacity(0.4)),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),

        ),
      ),
    );
  }
}