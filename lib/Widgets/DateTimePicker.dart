import 'package:ebloom_app/Config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class BasicDateField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
   //   Text('Basic date field (${format.pattern})'),
      DateTimeField(
        format: format,
        decoration: InputDecoration(
          labelText: 'Select',
          prefixText: '',
          labelStyle: TextStyle(
            fontSize: 14.0,
            color: kGreyColor,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 0.8, color: kLightGreyColor),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 0.8, color: kLightGreyColor)),
          contentPadding: EdgeInsets.all(14.0), floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        onShowPicker: (context, currentValue) {
          return showDatePicker(
            context: context,
            //firstDate: DateTime(2021),
            firstDate: DateTime.now(),
            initialDate: currentValue ?? DateTime.now(),
            lastDate: DateTime(DateTime.now().year, DateTime.now().month+1, DateTime.now().day),
            //lastDate: DateTime(2121),
          );
        },
      ),
    ]);
  }
}

class BasicTimeField extends StatelessWidget {
  final format = DateFormat("HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      DateTimeField(
        format: format,
        decoration: InputDecoration(
          labelText: 'Reporting Time ',
          labelStyle: TextStyle(
            fontSize: 15.0,
            color: Colors.black38,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.all(14.0),
        ),
        onShowPicker: (context, currentValue) async {
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
          );
          return DateTimeField.convert(time);
        },
      ),
    ]);
  }
}

class BasicDateTimeField extends StatelessWidget {
  final format = DateFormat("MM-dd HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      DateTimeField(
        decoration: InputDecoration(
          labelText: 'Date & time',
          labelStyle: TextStyle(
            fontSize: 15.0,
            color: Colors.black38,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.all(14.0),
        ),
        format: format,
        onShowPicker: (context, currentValue) async {
          final date = await showDatePicker(
              context: context,
              firstDate: DateTime(1990),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
          if (date != null) {
            final time = await showTimePicker(
              context: context,
              initialTime:
                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            );
            return DateTimeField.combine(date, time);
          } else {
            return currentValue;
          }
        },
      ),
    ]);
  }
}
