import 'package:brainstorm/widgets/custom_headings.dart';
import 'package:brainstorm/widgets/entry_box.dart';

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
            backgroundColor: const Color(0xff292828),
            shadowColor: Colors.transparent,
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                //need to add profile icon here

                // Container(
                //   padding: EdgeInsets.all(20),
                //   child: CircleAvatar(
                //     backgroundImage: AssetImage('assets/profile_icon.jpg'),
                //     radius: 70,
                //   ),
                // ),

                //cant get this to work :(

                CustomEntry(hintText: "First Name"),
                CustomEntry(hintText: "Last Name"),
                CustomEntry(hintText: "User Name"),
                CustomEntry(hintText: "Email"),
                SubHeading(text: "Security"),
                CustomEntry(hintText: "Current Password"),
                CustomEntry(hintText: "New Password"),
                CustomEntry(hintText: "Confirm Password"),
                // BarButton(
                //   text: "Update",
                //   onPressed: () {},
                // ),
                //wont let you put button unless you add action, dont know
                //how to get around this for now
              ],
            ),
          ),
          backgroundColor: const Color(0xff292828),
        ),
      );
}
