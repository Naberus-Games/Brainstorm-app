import 'package:brainstorm/widgets/text_input.dart';

import '../widgets/search_input.dart';
import 'package:flutter/material.dart';

const Color themeColor = Color(0xff74D9DF);

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
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
                        'Profile',
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SearchInput(
                      textController: TextEditingController(),
                      hintText: 'Search'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Personal',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 5),
                  child: TextInput(
                      textController: TextEditingController(),
                      hintText: 'First Name'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                  child: TextInput(
                      textController: TextEditingController(),
                      hintText: 'Last Name'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                  child: TextInput(
                      textController: TextEditingController(),
                      hintText: 'User Name'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                  child: TextInput(
                      textController: TextEditingController(),
                      hintText: 'Email'),
                ),
              ],
            ),
          ),
          backgroundColor: const Color(0xff292828),
        ),
      );
}
