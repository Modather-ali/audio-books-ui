import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFd00000),
      secondary: Color(0xFFe85d04),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
      bodyText2: TextStyle(
        color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      headline1: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}
