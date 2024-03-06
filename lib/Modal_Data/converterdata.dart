import 'package:flutter/material.dart';

var colormap = {
  "background": [
    Color(0xff2196f3),
    Color(0xff228eff),
  ],
  "Area": [Colors.green.shade100, Colors.green.shade200],
  "Data": [Colors.redAccent.shade100, Colors.redAccent.shade200],
  "Currency": [Colors.blue.shade100, Colors.blue.shade200],
  "Mileage": [
    Colors.deepPurpleAccent.shade100,
    Colors.deepPurpleAccent.shade200
  ],
  "Length": [Colors.purpleAccent.shade100, Colors.purpleAccent.shade200],
  "Power": [Colors.deepOrangeAccent.shade100, Colors.deepOrangeAccent.shade200],
  "Temprature": [Colors.indigoAccent.shade100, Colors.indigoAccent.shade200],
  "Volume": [Colors.lightGreen.shade100, Colors.lightGreen.shade200],
  "Time": [Colors.pink.shade100, Colors.pink.shade200],
  "Weight": [Colors.amberAccent.shade100, Colors.amberAccent.shade200],
  "Speed": [Colors.red.shade100, Colors.red.shade200],
  "Pressure": [Colors.blueGrey.shade100, Colors.blueGrey.shade200],
};

final pagenameToDataList = {
  "Area": areaUnitList,
  "Data": binaryUnitList,
  "Currency": currencyList,
  "Mileage": mileageUnitList,
  "Length": lengthUnitList,
  "Power": powerUnitList,
  "Volume": volumeUnitList,
  "Time": timeUnitList,
  "Temprature": temperatureUnitList,
  "Speed": speedUnitList,
  "Pressure": pressureUnitList,
  "Weight": weightUnitList,
};
final powerUnitList = [
  const DropdownMenuItem(value: 'Watts', child: Text('Watts')),
  const DropdownMenuItem(value: 'Kilowatts', child: Text('Kilowatts')),
  const DropdownMenuItem(value: 'Megawatts', child: Text('Megawatts')),
  const DropdownMenuItem(value: 'Gigawatts', child: Text('Gigawatts')),
  const DropdownMenuItem(value: 'Horsepower', child: Text('Horsepower')),
  // Add more power units as needed
];

final temperatureUnitList = [
  const DropdownMenuItem(value: 'Celsius', child: Text('Celsius')),
  const DropdownMenuItem(value: 'Fahrenheit', child: Text('Fahrenheit')),
  const DropdownMenuItem(value: 'Kelvin', child: Text('Kelvin')),
  // Add more temperature units as needed
];

final mileageUnitList = [
  const DropdownMenuItem(
      value: 'Miles per Gallon', child: Text('Miles per Gallon')),
  const DropdownMenuItem(
      value: 'Kilometers per Liter', child: Text('Kilometers per Liter')),
  const DropdownMenuItem(
      value: 'Miles per Liter', child: Text('Miles per Liter')),
  // Add more mileage units as needed
];

final lengthUnitList = [
  const DropdownMenuItem(value: 'Meters', child: Text('Meters')),
  const DropdownMenuItem(value: 'Centimeters', child: Text('Centimeters')),
  const DropdownMenuItem(value: 'Kilometers', child: Text('Kilometers')),
  const DropdownMenuItem(value: 'Inches', child: Text('Inches')),
  const DropdownMenuItem(value: 'Feet', child: Text('Feet')),
  const DropdownMenuItem(value: 'Yards', child: Text('Yards')),
  const DropdownMenuItem(value: 'Miles', child: Text('Miles')),
  // Add more length units as needed
];

final volumeUnitList = [
  const DropdownMenuItem(value: 'Liters', child: Text('Liters')),
  const DropdownMenuItem(value: 'Milliliters', child: Text('Milliliters')),
  const DropdownMenuItem(value: 'Cubic Meters', child: Text('Cubic Meters')),
  const DropdownMenuItem(
      value: 'Cubic Centimeters', child: Text('Cubic Centimeters')),
  const DropdownMenuItem(value: 'Gallons', child: Text('Gallons')),
  const DropdownMenuItem(value: 'Quarts', child: Text('Quarts')),
  // Add more volume units as needed
];

final weightUnitList = [
  const DropdownMenuItem(value: 'Grams', child: Text('Grams')),
  const DropdownMenuItem(value: 'Kilograms', child: Text('Kilograms')),
  const DropdownMenuItem(value: 'Milligrams', child: Text('Milligrams')),
  const DropdownMenuItem(value: 'Pounds', child: Text('Pounds')),
  const DropdownMenuItem(value: 'Ounces', child: Text('Ounces')),
  // Add more weight units as needed
];
final timeUnitList = [
  const DropdownMenuItem(value: 'Seconds', child: Text('Seconds')),
  const DropdownMenuItem(value: 'Minutes', child: Text('Minutes')),
  const DropdownMenuItem(value: 'Hours', child: Text('Hours')),
  const DropdownMenuItem(value: 'Days', child: Text('Days')),
  const DropdownMenuItem(value: 'Weeks', child: Text('Weeks')),
  const DropdownMenuItem(value: 'Months', child: Text('Months')),

  // Add more time units as needed
];

final currencyList = [
  const DropdownMenuItem(value: 'USD', child: Text('USD')),
  const DropdownMenuItem(value: 'EUR', child: Text('EUR')),
  const DropdownMenuItem(value: 'GBP', child: Text('GBP')),
  const DropdownMenuItem(value: 'JPY', child: Text('JPY')),
  const DropdownMenuItem(value: 'CAD', child: Text('CAD')),
  const DropdownMenuItem(value: 'AUD', child: Text('AUD')),
  const DropdownMenuItem(value: 'INR', child: Text('INR')),
  // ... Add more currencies as needed
];
final speedUnitList = [
  const DropdownMenuItem(
      value: 'Meters per Second', child: Text('Meters per Second')),
  const DropdownMenuItem(
      value: 'Kilometers per Hour', child: Text('Kilometers per Hour')),
  const DropdownMenuItem(
      value: 'Miles per Hour', child: Text('Miles per Hour')),
  const DropdownMenuItem(
      value: 'Feet per Second', child: Text('Feet per Second')),
  const DropdownMenuItem(value: 'Knots', child: Text('Knots')),
  // Add more speed units as needed
];

final binaryUnitList = [
  const DropdownMenuItem(value: 'Bits', child: Text('Bits')),
  const DropdownMenuItem(value: 'Bytes', child: Text('Bytes')),
  const DropdownMenuItem(value: 'Kilobytes', child: Text('Kilobytes')),
  const DropdownMenuItem(value: 'Megabytes', child: Text('Megabytes')),
  const DropdownMenuItem(value: 'Gigabytes', child: Text('Gigabytes')),

  // Add more binary units as needed
];
final areaUnitList = [
  const DropdownMenuItem(value: 'Square Meters', child: Text('Square Meters')),
  const DropdownMenuItem(
      value: 'Square Centimeters', child: Text('Square Centimeters')),
  const DropdownMenuItem(
      value: 'Square Kilometers', child: Text('Square Kilometers')),
  const DropdownMenuItem(value: 'Square Miles', child: Text('Square Miles')),
  const DropdownMenuItem(value: 'Square Inches', child: Text('Square Inches')),
  const DropdownMenuItem(value: 'Square Feet', child: Text('Square Feet')),
  const DropdownMenuItem(value: 'Square Yards', child: Text('Square Yards')),
  // Add more area units as needed
];
final pressureUnitList = [
  const DropdownMenuItem(value: 'Pascal', child: Text('Pascal')),
  const DropdownMenuItem(value: 'Kilopascal', child: Text('Kilopascal')),
  const DropdownMenuItem(value: 'Megapascal', child: Text('Megapascal')),
  const DropdownMenuItem(value: 'Bar', child: Text('Bar')),
  const DropdownMenuItem(value: 'Millibar', child: Text('Millibar')),
  const DropdownMenuItem(value: 'Atmosphere', child: Text('Atmosphere')),
  const DropdownMenuItem(value: 'Torr', child: Text('Torr')),
];
