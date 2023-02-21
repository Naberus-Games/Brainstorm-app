import 'package:brainstorm/pages/files_screen.dart';
import 'package:brainstorm/pages/Categories_files/notes_files_screen.dart';
import 'package:brainstorm/pages/Categories_files/todo_files_screen.dart';
import 'package:brainstorm/pages/Categories_files/whiteboard_files_screen.dart';
import 'package:brainstorm/pages/Categories_files/scripts_files_screen.dart';
import 'package:brainstorm/pages/profile_screen.dart';
import 'package:brainstorm/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

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
      routes: {
        '/': (context) => const LoginScreen(),
        '/Files-Screen': (context) => const FilesScreens(),
        '/Whiteboard-Screen': (context) => const WhiteboardFilesScreen(),
        '/Notes-Screen': (context) => const NotesFilesScreen(),
        '/To-Do-Screen': (context) => const ToDoFilesScreen(),
        '/Scripts-Screen': (context) => const ScriptsFilesScreen(),
        'Profile-Screen': (context) => const ProfileScreen(),
      },
    );
  }
}

extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
