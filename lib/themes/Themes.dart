import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.yellow,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade50,
      elevation: 0
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10)
      )
    ),
    brightness: Brightness.light
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark
  );
}
