import 'package:brainstorm/widgets/custom_headings.dart';
import 'package:brainstorm/widgets/entry_box.dart';
import 'package:brainstorm/widgets/custom_bar_button.dart';

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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  MainHeading(text: "Profile"),
                  //start profile icon
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 100,
                        child:
                            Icon(Icons.person, size: 150.0, color: themeColor)),
                  ),
                  //end profile icon
                  CustomEntry(hintText: "First Name"),
                  CustomEntry(hintText: "Last Name"),
                  CustomEntry(hintText: "User Name"),
                  CustomEntry(hintText: "Email"),
                  SubHeading(text: "Security"),
                  CustomEntry(hintText: "Current Password"),
                  CustomEntry(hintText: "New Password"),
                  CustomEntry(hintText: "Confirm Password"),
                  BarButton(
                    text: "Update",
                    onPressed: () {},
                  ),
                  //wont let you put button unless you add action, dont know
                  //how to get around this for now
                ],
              ),
            ),
          ),
          backgroundColor: const Color(0xff292828),
        ),
      );
}
