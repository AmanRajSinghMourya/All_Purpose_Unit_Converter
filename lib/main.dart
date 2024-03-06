import 'package:flutter/material.dart';
import 'package:project_1/Pages/optionpage.dart';
import 'package:project_1/Providers/areaprovider.dart';
import 'package:project_1/Providers/binaryprovider.dart';
import 'package:project_1/Providers/currencyprovider.dart';
import 'package:project_1/Providers/lengthprovider.dart';
import 'package:project_1/Providers/mileageprovider.dart';
import 'package:project_1/Providers/powerprovider.dart';
import 'package:project_1/Providers/pressureprovider.dart';
import 'package:project_1/Providers/speedprovider.dart';
import 'package:project_1/Providers/tempratureprovider.dart';
import 'package:project_1/Providers/timeprovider.dart';
import 'package:project_1/Providers/volumeprovider.dart';
import 'package:project_1/Providers/weightprovider.dart';

import 'package:provider/provider.dart';
import 'package:project_1/Providers/parch.dart';

ThemeData light = ThemeData(
  useMaterial3: true,
  // colorScheme: colorsScheme,
);
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CurrencyConverter(),
        ),
        ChangeNotifierProvider(
          create: (context) => AreaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BinaryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CurrencyProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TimeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TempratureProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LengthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MileageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PowerProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PressureProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => VolumeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SpeedProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WeightProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: isDarkMode ? dark : light,
        home: OptionPage(),
        // home: HomePage(),
      ),
    ),
  );
}
