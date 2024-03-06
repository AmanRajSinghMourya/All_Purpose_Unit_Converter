import 'package:flutter/material.dart';

class TimeProvider extends ChangeNotifier {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();

  String unit1 = "Seconds";
  String unit2 = "Minutes";

  String get getUnit1 => unit1;
  String get getUnit2 => unit2;
  var timeConversionMap = {
    'SecondsMinutes': 60,
    'SecondsHours': 3600,
    'SecondsDays': 86400,
    'SecondsWeeks': 604800,
    'SecondsMonths': 2.63e+6, // Assuming an average of 30.44 days in a month
    'MinutesSeconds': 1 / 60,
    'MinutesHours': 60,
    'MinutesDays': 1440,
    'MinutesWeeks': 10080,
    'MinutesMonths': 43829.1,
    'HoursSeconds': 1 / 3600,
    'HoursMinutes': 1 / 60,
    'HoursDays': 24,
    'HoursWeeks': 168,
    'HoursMonths': 730.484,
    'DaysSeconds': 1 / 86400,
    'DaysMinutes': 1 / 1440,
    'DaysHours': 1 / 24,
    'DaysWeeks': 7,
    'DaysMonths': 30.44, // Assuming an average of 30.44 days in a month
    'WeeksSeconds': 1 / 604800,
    'WeeksMinutes': 1 / 10080,
    'WeeksHours': 1 / 168,
    'WeeksDays': 1 / 7,
    'WeeksMonths': 4.35, // Assuming an average of 30.44 days in a month
    'MonthsSeconds':
        1 / 2.63e+6, // Assuming an average of 30.44 days in a month
    'MonthsMinutes': 1 / 43829.1,
    'MonthsHours': 1 / 730.484,
    'MonthsDays': 1 / 30.44, // Assuming an average of 30.44 days in a month
    'MonthsWeeks': 1 / 4.35, // Assuming an average of 30.44 days in a month
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
          (value1 / timeConversionMap[temp]!).toString();
    } else {
      // Handle invalid unit conversion
      textEditingController2.text = 'Invalid unit conversion';
    }

    notifyListeners();
  }
}
