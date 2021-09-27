import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import '../Model/wModel.dart';


class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var model = TimingModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Material Picker Examples'),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  Divider(),
                  buildScrollRow(context),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Row buildScrollRow(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width/1.2,
          child: ElevatedButton(

            child: Text(
              '${model.selectedTime}',
              textAlign: TextAlign.right,
            ),

            onPressed: () => showMaterialScrollPicker<PickerModel>(
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
          ),
        ),
      ],
    );
  }

}