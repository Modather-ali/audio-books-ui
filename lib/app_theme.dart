import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFd00000),
      secondary: Color.fromRGBO(232, 93, 4, 1),
    ),
    fontFamily: GoogleFonts.arvo().fontFamily,
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
