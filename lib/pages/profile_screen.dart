import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';
import 'package:brainstorm/widgets/entry_box.dart';
import 'package:brainstorm/theme.dart';
import 'package:flutter/material.dart';

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
          appBar: AppBar(
            centerTitle: false,
            title: const Text(
              "Profile",
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                //start profile icon
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100,
                      child: Icon(Icons.person,
                          size: 150.0,
                          color: const BrainstormTheme().primaryColor)),
                ),
                //end profile icon
                customTextField('First Name', Icons.abc, false, context),
                customTextField(
                    'Last Name', Icons.abc_outlined, false, context),
                customTextField(
                    'User Name', Icons.person_2_outlined, false, context),
                customTextField('Email', Icons.email, false, context),
                const SubHeading(text: "Security"),
                customTextField(
                    'Current Password', Icons.password, true, context),
                customTextField('New Password', Icons.password, true, context),
                customTextField(
                    'Confirm Password', Icons.password, true, context),
                filledUpdateBtn('Update', null, context),
              ],
            ),
          ),
        ),
      );
}
