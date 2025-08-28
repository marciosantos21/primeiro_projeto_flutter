import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: false,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
  ),
);

final darkTheme = ThemeData.dark(
  useMaterial3: false,
).copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
  ),
);