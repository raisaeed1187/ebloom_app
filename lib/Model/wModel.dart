import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class TimingModel {
  // Scroll/Radio Picker Model
  static const List<PickerModel> deliveryTimings = <PickerModel>[
    PickerModel('10:00 - 12:00', code: 1),
    PickerModel('14:00 - 16:00', code: 2),
    PickerModel('16:00 - 18:00', code: 3),
    PickerModel('18:00 - 20:00', code: 4),
    PickerModel('Anytime', code: 5),
  ];
  PickerModel selectedTime = deliveryTimings[2];

}