import 'package:flutter/material.dart';
import '../config/app_config.dart';

class Button extends StatelessWidget {

  Button({required this.onTap, required this.buttonText, required this.height });
  final String buttonText;
  final Function() onTap;
  final double height;

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: _screenSize.height * height,
        width: double.infinity,
        margin: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              //fontSize: 20.0,
              fontSize:  _screenSize.width / 22,
              fontFamily: 'Montserrat-M',
              //fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
