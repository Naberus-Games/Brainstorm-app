import '../widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';

const Color themeColor = Color(0xff74D9DF);

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const MainHeading(text: "Settings"),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SearchInput(
                      textController: TextEditingController(),
                      hintText: 'Search'),
                ),
                const SubHeading(text: "Appearance"),
                customBtn_with_modifier(Icons.dark_mode, "Dark Mode", false),
                const SubHeading(text: "Connections"),
                customBtn(Icons.location_city, "Local/SMB"),
                customBtn(Icons.cloud, "iCloud"),
                customBtn(Icons.wb_cloudy, "OneDrive"),
                customBtn(Icons.add_to_drive_outlined, "Google Drive"),
                customBtn(Icons.flash_on, "Brainstorm Cloud"),
                const SubHeading(text: "Features"),
                GestureDetector(
                  child: customBtn(Icons.crop_original, "Whiteboard"),
                  onTap: () {
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    // builder: (context) => const WhiteboardFilesScreen()));
                  },
                ),
                GestureDetector(
                  child: customBtn(Icons.notes, "Notes"),
                  onTap: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const NotesFilesScreen()));
                  },
                ),
                GestureDetector(
                  child: customBtn(Icons.check_box, "Todo"),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const ToDoFilesScreen()));
                  },
                ),
                GestureDetector(
                  child: customBtn(Icons.edit_document, "Scripts"),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const ScriptsFilesScreen()));
                  },
                ),
                const SubHeading(text: "About"),
                InfoCard("Version 0.00.1 (2023.2.7)"),
                InfoCard("Privacy Policy"),
                InfoCard("Terms of Use"),
                InfoCard("Licences")
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0xff292828),
      );
}
