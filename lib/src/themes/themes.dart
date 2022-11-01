import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData cellsTheme = ThemeData(
  primaryColor: const Color(0xFF7925E5),
  splashColor: const Color(0xFF7925E5).withOpacity(0.35),
  focusColor: const Color(0xFF7925E5).withOpacity(0.5),
  textTheme: TextTheme(
    headline1: GoogleFonts.ubuntu(
      textStyle: const TextStyle(
        color: Color(0xFF7925E5),
      ),
    ),
    headline2: GoogleFonts.ubuntu(
      textStyle: const TextStyle(
        color: Color(0xFF7925E5),
      ),
    ),
    headline3: GoogleFonts.ubuntu(
      textStyle: const TextStyle(
        fontSize: 35,
        color: Color(0xFF7925E5),
      ),
    ),
    headline4: GoogleFonts.ubuntu(
      textStyle: const TextStyle(
        fontSize: 25,
        color: Color(0xFF7925E5),
      ),
    ),
    headline5: GoogleFonts.ubuntu(
      textStyle: const TextStyle(
        color: Color(0xFF7925E5),
      ),
    ),
    headline6: GoogleFonts.ubuntu(
      textStyle: const TextStyle(
        color: Color(0xFF7925E5),
      ),
    ),
    bodyText1: GoogleFonts.roboto(
      textStyle: const TextStyle(
        color: Color(0xFF404040),
      ),
    ),
    bodyText2: GoogleFonts.roboto(
      textStyle: const TextStyle(
        color: Color(0xFF404040),
      ),
    ),
    subtitle1: GoogleFonts.ubuntu(
      textStyle: const TextStyle(
        fontSize: 12,
        color: Color(0xFF7925E5),
      ),
    ),
    button: GoogleFonts.ubuntu(
      textStyle: const TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: Color(0xFF7925E5),
  ),
);
