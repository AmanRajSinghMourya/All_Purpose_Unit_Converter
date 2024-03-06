import 'package:flutter/material.dart';

class LengthProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Meters";
  String unit2 = "Centimeters";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;
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

  var lengthConversionMap = {
    'MetersCentimeters': 100,
    'MetersKilometers': 0.001,
    'MetersInches': 39.3701,
    'MetersFeet': 3.28084,
    'MetersYards': 1.09361,
    'MetersMiles': 6.21371e-4,
    'CentimetersMeters': 0.01,
    'CentimetersKilometers': 1e-5,
    'CentimetersInches': 0.393701,
    'CentimetersFeet': 0.0328084,
    'CentimetersYards': 0.0109361,
    'CentimetersMiles': 6.21371e-6,
    'KilometersMeters': 1000,
    'KilometersCentimeters': 1e5,
    'KilometersInches': 39370.1,
    'KilometersFeet': 3280.84,
    'KilometersYards': 1093.61,
    'KilometersMiles': 0.621371,
    'InchesMeters': 0.0254,
    'InchesCentimeters': 2.54,
    'InchesKilometers': 2.54e-5,
    'InchesFeet': 0.0833333,
    'InchesYards': 0.0277778,
    'InchesMiles': 1.5783e-5,
    'FeetMeters': 0.3048,
    'FeetCentimeters': 30.48,
    'FeetKilometers': 3.048e-4,
    'FeetInches': 12,
    'FeetYards': 0.333333,
    'FeetMiles': 1.89394e-4,
    'YardsMeters': 0.9144,
    'YardsCentimeters': 91.44,
    'YardsKilometers': 9.144e-4,
    'YardsInches': 36,
    'YardsFeet': 3,
    'YardsMiles': 5.68182e-4,
    'MilesMeters': 1609.34,
    'MilesCentimeters': 160934,
    'MilesKilometers': 1.60934,
    'MilesInches': 63360,
    'MilesFeet': 5280,
    'MilesYards': 1760,
  };
  void convert() {
    double value1 = double.parse(textEditingController1.text);
    String temp = unit1 + unit2;
    if (unit1 == unit2) {
      textEditingController2.text = value1.toString();
    } else if (unit1 != unit2) {
      textEditingController2.text =
          (value1 * lengthConversionMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
