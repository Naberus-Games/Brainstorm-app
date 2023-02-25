import 'package:brainstorm/pages/Work_Screens/notes_work_screen.dart';
import 'package:brainstorm/pages/Work_Screens/todo_work_screen.dart';
import 'package:brainstorm/pages/Work_Screens/whiteboard_work_screen.dart';
import 'package:brainstorm/pages/files_screen.dart';
import 'package:brainstorm/pages/Categories_files/notes_files_screen.dart';
import 'package:brainstorm/pages/Categories_files/todo_files_screen.dart';
import 'package:brainstorm/pages/Categories_files/whiteboard_files_screen.dart';
import 'package:brainstorm/pages/Categories_files/scripts_files_screen.dart';
import 'package:brainstorm/pages/profile_screen.dart';
import 'package:brainstorm/pages/login_screen.dart';
import 'package:brainstorm/pages/settings_screen.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 30.0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const brainstormTheme = BrainstormTheme();
    return MaterialApp(
      theme: brainstormTheme.lightToThemeData(),
      darkTheme: brainstormTheme.darkToThemeData(),
      themeMode: ThemeMode.system,
      initialRoute: '/',
    final brightness = MediaQuery.of(this).platformBrightness;
