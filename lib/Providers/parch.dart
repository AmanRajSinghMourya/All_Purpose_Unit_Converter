import 'package:flutter/material.dart';

class CurrencyConverter extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  String unit1 = "USD";
  String unit2 = "INR";
  String get getUnit1 => unit1;
  String get getUnit2 => unit2;

  var currencymap = {
    "USDINR": 83.12,
    "EURINR": 90.8,
    "CADINR": 62.01,
    "AUSINR": 55.57,
    "GBPINR": 105.57,
    "JPYINR": 0.57,
    "INRUSD": 0.0012,
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
    print(textEditingController1.text);
    print(textEditingController2.text);
    print(unit1.toString());
    print(unit2.toString());
  }

  void convert() {
    double value1 = double.parse(textEditingController1.text);
    String temp = unit1 + unit2;
    print(value1);
    print(temp);

    if (unit1 == "USD" && unit2 == "INR") {
      textEditingController2.text = (value1 * currencymap[temp]!).toString();
    } else if (unit1 == "EUR" && unit2 == "INR") {
      textEditingController2.text = (value1 * currencymap[temp]!).toString();
    } else if (unit1 == "CAD" && unit2 == "INR") {
      textEditingController2.text = (value1 * currencymap[temp]!).toString();
    } else if (unit1 == "AUS" && unit2 == "INR") {
      textEditingController2.text = (value1 * currencymap[temp]!).toString();
    } else if (unit1 == "GBP" && unit2 == "INR") {
      textEditingController2.text = (value1 * currencymap[temp]!).toString();
    } else if (unit1 == "JPY" && unit2 == "INR") {
      textEditingController2.text = (value1 * currencymap[temp]!).toString();
    } else if (unit1 == "INR" && unit2 == "USD") {
      textEditingController2.text = (value1 * currencymap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }
    notifyListeners();
  }
}
