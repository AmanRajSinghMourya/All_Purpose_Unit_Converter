import 'package:flutter/material.dart';

class AreaProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Square Meters";
  String unit2 = "Square Centimeters";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;

  var areaConversionMap = {
    'Square MetersSquare Centimeters': 10000,
    'Square MetersSquare Kilometers': 1e-6,
    'Square MetersSquare Miles': 3.861e-7,
    'Square MetersSquare Inches': 1550.0031,
    'Square MetersSquare Feet': 10.7639,
    'Square MetersSquare Yards': 1.19599,
    'Square CentimetersSquare Meters': 1e-4,
    'Square CentimetersSquare Kilometers': 1e-10,
    'Square CentimetersSquare Miles': 3.861e-11,
    'Square CentimetersSquare Inches': 0.155,
    'Square CentimetersSquare Feet': 0.00107639,
    'Square CentimetersSquare Yards': 0.000119599,
    'Square KilometersSquare Meters': 1e6,
    'Square KilometersSquare Centimeters': 1e10,
    'Square KilometersSquare Miles': 0.239,
    'Square KilometersSquare Inches': 1.55e+12,
    'Square KilometersSquare Feet': 1.076e+7,
    'Square KilometersSquare Yards': 1.196e+6,
    'Square MilesSquare Meters': 2.59e+6,
    'Square MilesSquare Centimeters': 2.59e+13,
    'Square MilesSquare Kilometers': 4.014e+9,
    'Square MilesSquare Inches': 4.014e+12,
    'Square MilesSquare Feet': 2.788e+7,
    'Square MilesSquare Yards': 3.098e+6,
    'Square InchesSquare Meters': 6.4516e-4,
    'Square InchesSquare Centimeters': 6.4516,
    'Square InchesSquare Kilometers': 1.55e-13,
    'Square InchesSquare Miles': 2.49e-13,
    'Square InchesSquare Feet': 0.00694444,
    'Square InchesSquare Yards': 0.000771605,
    'Square FeetSquare Meters': 0.092903,
    'Square FeetSquare Centimeters': 929.03,
    'Square FeetSquare Kilometers': 9.29e-8,
    'Square FeetSquare Miles': 3.587e-8,
    'Square FeetSquare Inches': 144,
    'Square FeetSquare Yards': 0.111111,
    'Square YardsSquare Meters': 0.836127,
    'Square YardsSquare Centimeters': 8361.27,
    'Square YardsSquare Kilometers': 8.361e-7,
    'Square YardsSquare Miles': 3.228e-7,
    'Square YardsSquare Inches': 1296,
    'Square YardsSquare Feet': 9,
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
          (value1 * areaConversionMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
