import 'package:flutter/material.dart';

class MileageProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Miles per Gallon";
  String unit2 = "Kilometers per Liter";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;
  var mileageConversionMap = {
    'Miles per GallonKilometers per Liter': 0.425144,
    'Miles per GallonMiles per Liter': 1.60934,
    'Kilometers per LiterMiles per Gallon': 2.35215,
    'Kilometers per LiterMiles per Liter': 3.78541,
    'Miles per LiterMiles per Gallon': 0.621371,
    'Miles per LiterKilometers per Liter': 0.264172,
  };
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

  void convert() {
    double value1 = double.parse(textEditingController1.text);
    String temp = unit1 + unit2;
    if (unit1 == unit2) {
      textEditingController2.text = value1.toString();
    } else if (unit1 != unit2) {
      textEditingController2.text =
          (value1 * mileageConversionMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
