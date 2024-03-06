import 'package:flutter/material.dart';

class WeightProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Grams";
  String unit2 = "Kilograms";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;
  var weightConversionMap = {
    'GramsKilograms': 0.001,
    'GramsMilligrams': 1000,
    'GramsPounds': 0.00220462,
    'GramsOunces': 0.03527396,
    'KilogramsGrams': 1000,
    'KilogramsMilligrams': 1e+6,
    'KilogramsPounds': 2.20462,
    'KilogramsOunces': 35.27396,
    'MilligramsGrams': 0.001,
    'MilligramsKilograms': 1e-6,
    'MilligramsPounds': 2.20462e-6,
    'MilligramsOunces': 3.527396e-5,
    'PoundsGrams': 453.592,
    'PoundsKilograms': 0.453592,
    'PoundsMilligrams': 453592.4,
    'PoundsOunces': 16,
    'OuncesGrams': 28.3495,
    'OuncesKilograms': 0.0283495,
    'OuncesMilligrams': 28349.5,
    'OuncesPounds': 0.0625,
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
          (value1 * weightConversionMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
