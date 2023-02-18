import 'package:flutter/material.dart';

@immutable
class BrainstormTheme {
  const BrainstormTheme(
      {this.primaryColor = const Color(0xff74D9DF),
      this.tertiaryColor = const Color(0xff292828),
      this.neutralColor = const Color(0xfffffbe6)});

  final Color primaryColor, tertiaryColor, neutralColor;

  ThemeData toThemeData() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
        scaffoldBackgroundColor: tertiaryColor,
        shadowColor: Colors.transparent,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: primaryColor));
  }
}
