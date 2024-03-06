import 'package:flutter/material.dart';

class VolumeProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Liters";
  String unit2 = "Milliliters";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;

  void printvalue() {
    print(unit1);
    print(unit2);
    print(textEditingController1.text);
    print(textEditingController2.text);
    notifyListeners();
  }

  var volumeConversionMap = {
    'LitersMilliliters': 1000,
    'LitersCubic Meters': 0.001,
    'LitersCubic Centimeters': 1000,
    'LitersGallons': 0.264172,
    'LitersQuarts': 1.05669,
    'MillilitersLiters': 0.001,
    'MillilitersCubic Meters': 1e-6,
    'MillilitersCubic Centimeters': 1,
    'MillilitersGallons': 2.64172e-4,
    'MillilitersQuarts': 0.00105669,
    'Cubic MetersLiters': 1000,
    'Cubic MetersMilliliters': 1e6,
    'Cubic MetersCubic Centimeters': 1e6,
    'Cubic MetersGallons': 264.172,
    'Cubic MetersQuarts': 1056.69,
    'Cubic CentimetersLiters': 0.001,
    'Cubic CentimetersMilliliters': 1,
    'Cubic CentimetersCubic Meters': 1e-6,
    'Cubic CentimetersGallons': 2.64172e-7,
    'Cubic CentimetersQuarts': 1.05669e-6,
    'GallonsLiters': 3.78541,
    'GallonsMilliliters': 3.78541e3,
    'GallonsCubic Meters': 3.78541e-3,
    'GallonsCubic Centimeters': 3.78541e6,
    'GallonsQuarts': 4,
    'QuartsLiters': 0.946353,
    'QuartsMilliliters': 946.353,
    'QuartsCubic Meters': 9.46353e-4,
    'QuartsCubic Centimeters': 946353,
    'QuartsGallons': 0.25,
  };
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
          (value1 * volumeConversionMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
