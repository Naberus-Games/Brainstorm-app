import 'package:flutter/material.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Settings",
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          backgroundColor: const Color(0xff292828),
          shadowColor: Colors.transparent,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                            labelText: "Search",
                            prefixIcon: Icon(Icons.search))),
                  ),
                  const SubHeading(text: "Appearance"),
                  //customBtnWithModifier(Icons.dark_mode, "Dark Mode", false),
                  const SubHeading(text: "Connections"),
                  customBtn(Icons.location_city, "Local/SMB", context),
                  customBtn(Icons.cloud, "iCloud", context),
                  customBtn(Icons.wb_cloudy, "OneDrive", context),
                  customBtn(
                      Icons.add_to_drive_outlined, "Google Drive", context),
                  customBtn(Icons.flash_on, "Brainstorm Cloud", context),
                  const SubHeading(text: "Features"),
                  GestureDetector(
                    child:
                        customBtn(Icons.crop_original, "Whiteboard", context),
                    onTap: () {
                      // Navigator.push(
                      // context,
                      // MaterialPageRoute(
                      // builder: (context) => const WhiteboardFilesScreen()));
                    },
                  ),
                  GestureDetector(
                    child: customBtn(Icons.notes, "Notes", context),
                    onTap: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const NotesFilesScreen()));
                    },
                  ),
                  GestureDetector(
                    child: customBtn(Icons.check_box, "Todo", context),
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const ToDoFilesScreen()));
                    },
                  ),
                  GestureDetector(
                    child: customBtn(Icons.edit_document, "Scripts", context),
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const ScriptsFilesScreen()));
                    },
                  ),
                  const SubHeading(text: "About"),
                  infoCard("Version 0.00.1 (2023.2.7)"),
                  infoCard("Privacy Policy"),
                  infoCard("Terms of Use"),
                  infoCard("Licences")
                ],
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xff292828),
      );
}
