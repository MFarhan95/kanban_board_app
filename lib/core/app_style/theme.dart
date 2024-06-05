import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Noto Serif',
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0076EB),
      onPrimary: Colors.white,
      surface: Color(0xFFFAFCFF),
      onSurface: Color(0xDE04294E),
      secondary: Color(0xFFFFFFFF),
      onSecondary: Colors.black,
      brightness: Brightness.light,
      tertiary: Color(0xDE04294E),
      outline: Colors.white,
    ),
    canvasColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: const Color(0xDE04294E), fontSize: 16.sp),
      bodyMedium: const TextStyle(color: Color(0xDE04294E)),
      bodySmall: const TextStyle(color: Color(0xDE04294E)),
      titleMedium: const TextStyle(color: Color(0xDE04294E)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.transparent, width: 2),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.transparent, width: 2),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.red, width: 2),
      ),
      filled: true,
      fillColor: const Color.fromRGBO(249, 249, 249, 1),
      prefixIconColor: const Color.fromRGBO(173, 173, 173, 1),
      constraints: const BoxConstraints(minHeight: 20, minWidth: 20),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Noto Serif',
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF0076EB),
      surface: Color(0xFF121212),
      onSurface: Color(0xDEEDF6FF),
      secondary: Color(0xFF222222),
      onSecondary: Colors.white,
      onPrimary: Colors.white,
      tertiary: Color(0x61ECF5FE),
      outline: Colors.black,
    ),
    cardColor: const Color(0xFFFFFFFF),
    canvasColor: Colors.black,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: const Color(0xFFFFFFFF), fontSize: 16.sp),
      bodyMedium: const TextStyle(color: Color(0xFFFFFFFF)),
      bodySmall: const TextStyle(color: Color(0xFFFFFFFF)),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple, //  <-- dark color
      textTheme:
          ButtonTextTheme.primary, //  <-- this auto selects the right color
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.transparent, width: 2),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.transparent, width: 2),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.red, width: 2),
      ),
      filled: true,
      fillColor: const Color.fromRGBO(48, 48, 48, 1),
      prefixIconColor: const Color.fromRGBO(173, 173, 173, 1),
      constraints: const BoxConstraints(minHeight: 20, minWidth: 20),
    ),
  );
}
