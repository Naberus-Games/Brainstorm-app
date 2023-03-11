import 'package:brainstorm/theme.dart';
import 'package:flutter/material.dart';

const MaterialColor themeColor = Colors.lightBlue;

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
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ), //Change
                    ),
                  ],
                ),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/Files-Screen', (route) => false);
          },
          backgroundColor: BrainstormTheme().primaryColor,
          foregroundColor: Colors.white,
          child: const Icon(Icons.login),
        ),
      );
}
