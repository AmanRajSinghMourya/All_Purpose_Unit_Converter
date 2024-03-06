import 'package:flutter/material.dart';

class PressureProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Pascal";
  String unit2 = "Kilopascal";

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

  var pressureMap = {
    'PascalKilopascal': 0.001,
    'PascalMegapascal': 1e-6,
    'PascalBar': 1e-5,
    'PascalMillibar': 0.01,
    'PascalAtmosphere': 9.8692e-6,
    'PascalTorr': 0.00750062,
    'KilopascalPascal': 1000,
    'KilopascalMegapascal': 0.001,
    'KilopascalBar': 0.01,
    'KilopascalMillibar': 10,
    'KilopascalAtmosphere': 0.0098692,
    'KilopascalTorr': 7.50062,
    'MegapascalPascal': 1e6,
    'MegapascalKilopascal': 1000,
    'MegapascalBar': 10,
    'MegapascalMillibar': 10000,
    'MegapascalAtmosphere': 0.0098692e-3,
    'MegapascalTorr': 7500.62e-3,
    'BarPascal': 1e5,
    'BarKilopascal': 100,
    'BarMegapascal': 0.1,
    'BarMillibar': 1000,
    'BarAtmosphere': 0.98692,
    'BarTorr': 750.062,
    'MillibarPascal': 100,
    'MillibarKilopascal': 0.1,
    'MillibarMegapascal': 1e-4,
    'MillibarBar': 0.001,
    'MillibarAtmosphere': 0.00098692,
    'MillibarTorr': 0.750062,
    'AtmospherePascal': 101325,
    'AtmosphereKilopascal': 101.325,
    'AtmosphereMegapascal': 0.101325,
    'AtmosphereBar': 1.01325,
    'AtmosphereMillibar': 1013.25,
    'AtmosphereTorr': 760,
    'TorrPascal': 133.322,
    'TorrKilopascal': 0.133322,
    'TorrMegapascal': 1.33322e-4,
    'TorrBar': 0.00133322,
    'TorrMillibar': 1.33322,
    'TorrAtmosphere': 0.00131579,
  };

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
      textEditingController2.text = (value1 * pressureMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }
    notifyListeners();
  }
}
