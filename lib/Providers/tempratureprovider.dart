import 'package:flutter/material.dart';

class TempratureProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Celsius";
  String unit2 = "Fahrenheit";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;

  var temperatureConversionMap = {
    'CelsiusFahrenheit': (double celsius) => (celsius * 9 / 5) + 32,
    'CelsiusKelvin': (double celsius) => celsius + 273.15,
    'FahrenheitCelsius': (double fahrenheit) => (fahrenheit - 32) * 5 / 9,
    'FahrenheitKelvin': (double fahrenheit) => (fahrenheit + 459.67) * 5 / 9,
    'KelvinCelsius': (double kelvin) => kelvin - 273.15,
    'KelvinFahrenheit': (double kelvin) => (kelvin * 9 / 5) - 459.67,
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
      double fahrenheitResult = temperatureConversionMap[temp]!(value1);

      textEditingController2.text = fahrenheitResult.toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
