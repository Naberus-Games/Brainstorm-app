import 'package:brainstorm/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

const MaterialColor themeColor = Colors.lightBlue;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const brainstormTheme = BrainstormTheme();
    return MaterialApp(
      theme: brainstormTheme.toThemeData(),
      home: const LoginScreen(),
    );
  }
}
