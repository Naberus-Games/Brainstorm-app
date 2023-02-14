import 'package:brainstorm/pages/files_screen.dart';
import 'package:flutter/material.dart';

const Color themeColor = Color(0xff74D9DF);

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ), //Change
                    ),
                  ],
                ),
              ]),
        ),
        backgroundColor: const Color(0xff292828),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FilesScreens()));
          },
          backgroundColor: themeColor,
          child: const Icon(Icons.login),
        ),
      );
}
