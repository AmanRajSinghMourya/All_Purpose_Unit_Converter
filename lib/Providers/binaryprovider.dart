import 'package:flutter/material.dart';

class BinaryProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = 'Bytes';
  String unit2 = 'KiloBytes';

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;

  var binaryUnitMap = {
    'BitsBytes': 0.125,
    'BitsKilobytes': 1.25e-7,
    'BitsMegabytes': 1.25e-10,
    'BitsGigabytes': 1.25e-13,
    'BytesBits': 8,
    'BytesKilobytes': 1e-3,
    'BytesMegabytes': 1e-6,
    'BytesGigabytes': 1e-9,
    'KilobytesBits': 8e3,
    'KilobytesBytes': 1e3,
    'KilobytesMegabytes': 1e-3,
    'KilobytesGigabytes': 1e-6,
    'MegabytesBits': 8e6,
    'MegabytesBytes': 1e6,
    'MegabytesKilobytes': 1e3,
    'MegabytesGigabytes': 1e-3,
    'GigabytesBits': 8e9,
    'GigabytesBytes': 1e9,
    'GigabytesKilobytes': 1e6,
    'GigabytesMegabytes': 1e3,
  };

  void setunit1(String a) {
    unit1 = a;
    notifyListeners();
  }

  void setunit2(String a) {
    unit2 = a;
    notifyListeners();
  }

  void printvalue() {
    print(unit1);
    print(unit2);
    print(textEditingController1.text);
    print(textEditingController2.text);
    notifyListeners();
  }

  void convert() {
    double value1 = double.parse(textEditingController1.text);
    String temp = unit1 + unit2;
    if (unit1 == unit2) {
      textEditingController2.text = value1.toString();
    } else if (unit1 != unit2) {
      textEditingController2.text = (value1 * binaryUnitMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
