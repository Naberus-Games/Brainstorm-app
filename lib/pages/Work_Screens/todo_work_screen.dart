import 'package:flutter/material.dart';

const MaterialColor themeColor = Colors.lightBlue;

class ToDoFilesScreen extends StatelessWidget {
  const ToDoFilesScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'To Do',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
        backgroundColor: const Color(0xff292828),
      );
}
