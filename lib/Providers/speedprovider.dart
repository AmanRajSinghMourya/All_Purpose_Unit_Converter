import 'package:flutter/material.dart';

class SpeedProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Meters per Second";
  String unit2 = "Kilometers per Hour";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;
  var speedConversionMap = {
    'Meters per SecondKilometers per Hour': 3.6,
    'Meters per SecondMiles per Hour': 2.23694,
    'Meters per SecondFeet per Second': 3.28084,
    'Meters per SecondKnots': 1.94384,
    'Kilometers per HourMeters per Second': 0.277778,
    'Kilometers per HourMiles per Hour': 0.621371,
    'Kilometers per HourFeet per Second': 0.911344,
    'Kilometers per HourKnots': 0.539957,
    'Miles per HourMeters per Second': 0.44704,
    'Miles per HourKilometers per Hour': 1.60934,
    'Miles per HourFeet per Second': 1.46667,
    'Miles per HourKnots': 0.868976,
    'Feet per SecondMeters per Second': 0.3048,
    'Feet per SecondKilometers per Hour': 1.09728,
    'Feet per SecondMiles per Hour': 0.681818,
    'Feet per SecondKnots': 0.592484,
    'KnotsMeters per Second': 0.514444,
    'KnotsKilometers per Hour': 1.852,
    'KnotsMiles per Hour': 1.15078,
    'KnotsFeet per Second': 1.68781,
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
          (value1 * speedConversionMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
