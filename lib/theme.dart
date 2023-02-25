import 'package:flutter/material.dart';

@immutable
class BrainstormTheme {
  const BrainstormTheme({
    this.primaryColor = const Color(0xff74D9DF),
    this.darkBackgroundColor = const Color(0xff292828),
    this.lightBackgroundColor = const Color(0xFFFCFCFC),
    this.darkAccentColor = const Color(0xff3D3C3C),
    this.lightAccentColor = const Color(0xFFF0F0F0),
  });

  final Color primaryColor,
      darkBackgroundColor,
      darkAccentColor,
      lightBackgroundColor,
      lightAccentColor;

  ThemeData lightToThemeData() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey, brightness: Brightness.light),
      scaffoldBackgroundColor: lightBackgroundColor,
      shadowColor: Colors.transparent,
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              alignment: Alignment.centerLeft,
              iconColor: MaterialStatePropertyAll<Color>(primaryColor),
              foregroundColor:
                  const MaterialStatePropertyAll<Color>(Colors.black),
              backgroundColor:
                  MaterialStatePropertyAll<Color>(lightAccentColor))),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primaryColor),
    );
  }

  ThemeData darkToThemeData() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey, brightness: Brightness.dark),
      appBarTheme: AppBarTheme(color: darkBackgroundColor),
      scaffoldBackgroundColor: darkBackgroundColor,
      shadowColor: Colors.transparent,
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              alignment: Alignment.centerLeft,
              iconColor: MaterialStatePropertyAll<Color>(primaryColor),
              foregroundColor:
                  const MaterialStatePropertyAll<Color>(Colors.white),
              backgroundColor:
                  MaterialStatePropertyAll<Color>(darkAccentColor))),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primaryColor),
    );
  }
}
