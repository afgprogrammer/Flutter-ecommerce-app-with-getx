import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
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
    textTheme: TextTheme(
      headline1: TextStyle(
        letterSpacing: -1.5,
        fontSize: 48,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
        letterSpacing: -1.0,
        fontSize: 40,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      headline3: TextStyle(
        letterSpacing: -1.0,
        fontSize: 32,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
      headline4: TextStyle(
        letterSpacing: -1.0,
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.w600
      ),
      headline5: TextStyle(
        letterSpacing: -1.0,
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w500
      ),
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500
      ),
      subtitle1: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500
      ),
      subtitle2: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500
      ),
      bodyText1: TextStyle(
        color: Colors.grey.shade700,
        fontSize: 16,
        fontWeight: FontWeight.w400
      ),
      bodyText2: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 14,
        fontWeight: FontWeight.w400
      ),
      button: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600
      ),
      caption: TextStyle(
        color: Colors.grey.shade800,
        fontSize: 14,
        fontWeight: FontWeight.w400
      ),
      overline: TextStyle(
        color: Colors.grey.shade700,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.5
      )
    )
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline1: TextStyle(
        letterSpacing: -1.5,
        fontSize: 48,
        color: Colors.grey.shade50,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
        letterSpacing: -1.0,
        fontSize: 40,
        color: Colors.grey.shade50,
        fontWeight: FontWeight.bold
      ),
      headline3: TextStyle(
        letterSpacing: -1.0,
        fontSize: 32,
        color: Colors.grey.shade50,
        fontWeight: FontWeight.bold
      ),
      headline4: TextStyle(
        letterSpacing: -1.0,
        color: Colors.grey.shade50,
        fontSize: 28,
        fontWeight: FontWeight.w600
      ),
      headline5: TextStyle(
        letterSpacing: -1.0,
        color: Colors.grey.shade50,
        fontSize: 24,
        fontWeight: FontWeight.w500
      ),
      headline6: TextStyle(
        letterSpacing: -1.0,
        color: Colors.grey.shade50,
        fontSize: 20,
        fontWeight: FontWeight.w500
      ),
      subtitle1: TextStyle(
        color: Colors.grey.shade50,
        fontSize: 18,
        fontWeight: FontWeight.w500
      ),
      subtitle2: TextStyle(
        color: Colors.grey.shade50,
        fontSize: 16,
        fontWeight: FontWeight.w500
      ),
      bodyText1: TextStyle(
        color: Colors.grey.shade50,
        fontSize: 16,
        fontWeight: FontWeight.w400
      ),
      bodyText2: TextStyle(
        color: Colors.grey.shade50,
        fontSize: 14,
        fontWeight: FontWeight.w400
      ),
      button: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600
      ),
      caption: TextStyle(
        color: Colors.grey.shade50,
        fontSize: 12,
        fontWeight: FontWeight.w500
      ),
      overline: TextStyle(
        color: Colors.grey.shade50,
        fontSize: 10,
        fontWeight: FontWeight.w400
      )
    ),
  );
}
