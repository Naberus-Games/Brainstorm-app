import 'pages/files_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Color themeColor = Color(0xff74D9DF);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: FilesScreens(),
      );
}
