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
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'models/firebase_options.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'theme.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 30.0;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const brainstormTheme = BrainstormTheme();
    return MaterialApp(
      // The theme mode is set to system, which means that the app will use the
// current system theme by default.
      title: 'Brainstorm',
      scrollBehavior: AppScrollBehavior(),
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
        '/Profile-Screen': (context) => const ProfileScreen(),
        '/Settings-Screen': (context) => const SettingsScreen(),
        '/Whiteboard-Work-Screen': (context) => const WhiteboardWorkScreen(),
        '/Notes-Work-Screen': (context) => const NotesWorkScreen(),
        '/To-Do-Work-Screen': (context) => const ToDoWorkScreen(),
        //'/Scripts-Work-Screen': (context) => context ScriptsWorkScreen(),
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

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
