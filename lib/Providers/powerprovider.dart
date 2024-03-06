import 'package:flutter/material.dart';

class PowerProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Watts";
  String unit2 = "Kilowatts";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;

  void printvalue() {
    print(unit1);
    print(unit2);
    print(textEditingController1.text);
    print(textEditingController2.text);
    notifyListeners();
  }

  void setunit1(String a) {
    unit1 = a;
    notifyListeners();
  }

  void setunit2(String a) {
    unit2 = a;
    notifyListeners();
  }

  var powerConversionMap = {
    'WattsKilowatts': 0.001,
    'WattsMegawatts': 1e-6,
    'WattsGigawatts': 1e-9,
    'WattsHorsepower': 0.00134102,
    'KilowattsWatts': 1000,
    'KilowattsMegawatts': 1e-3,
    'KilowattsGigawatts': 1e-6,
    'KilowattsHorsepower': 1.34102,
    'MegawattsWatts': 1e6,
    'MegawattsKilowatts': 1000,
    'MegawattsGigawatts': 1e-3,
    'MegawattsHorsepower': 1341.02,
    'GigawattsWatts': 1e9,
    'GigawattsKilowatts': 1e6,
    'GigawattsMegawatts': 1000,
    'GigawattsHorsepower': 1.34102e6,
    'HorsepowerWatts': 745.7,
    'HorsepowerKilowatts': 0.7457,
    'HorsepowerMegawatts': 7.457e-4,
    'HorsepowerGigawatts': 7.457e-7,
  };

  void convert() {
    double value1 = double.parse(textEditingController1.text);
    String temp = unit1 + unit2;
    if (unit1 == unit2) {
      textEditingController2.text = value1.toString();
    } else if (unit1 != unit2) {
      textEditingController2.text =
          (value1 * powerConversionMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
