import 'package:brainstorm/pages/login_screen.dart';
import 'package:flutter/material.dart';

late final bool useMaterial3;
void main() {
  runApp(const MyApp());
}

const MaterialColor themeColor = Colors.lightBlue;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: themeColor,
      ),
      home: const LoginScreen(),
    );
  }
}
