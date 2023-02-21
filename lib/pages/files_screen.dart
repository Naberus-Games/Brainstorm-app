import 'package:brainstorm/main.dart';
import 'package:brainstorm/theme.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_carousel.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 30.0;

class FilesScreens extends StatelessWidget {
  const FilesScreens({super.key});

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
              "Files",
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            actions: [
              //Popup Buttons
              Padding(
                padding: const EdgeInsets.all(9.5),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: PopupMenuButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    icon: Icon(Icons.person,
                        color: const BrainstormTheme().primaryColor),
                    color: context.isDarkMode
                        ? const BrainstormTheme().darkAccentColor
                        : const BrainstormTheme().lightAccentColor,
                    onSelected: (value) {
                      switch (value) {
                        case 1:
                          Navigator.pushNamed(context, '/Profile-Screen');
                          break;
                        case 2:
                          Navigator.pushNamed(context, '/Settings-Screen');
                          break;
                        case 3:
                          Navigator.pushNamed(context, '/');
                          break;
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: const BrainstormTheme().primaryColor,
                          ),
                          title: Text('Profile',
                              style: Theme.of(context).textTheme.bodyMedium),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: const BrainstormTheme().primaryColor,
                          ),
                          title: Text('Setting',
                              style: Theme.of(context).textTheme.bodyMedium),
                        ),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: ListTile(
                          leading: const Icon(
                            Icons.logout,
                            color: Colors.red,
                          ),
                          title: Text(
                            'Logout',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                    tooltip: 'Profile',
                  ),
                ),
              ),
            ],
            //Search Field
            bottom: PreferredSize(
              preferredSize: const Size(0, 90),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: leftVal, right: rightVal, top: 0, bottom: 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: context.isDarkMode
                        ? const BrainstormTheme().darkAccentColor
                        : const BrainstormTheme().lightAccentColor,
                    borderRadius: BorderRadius.circular(radialVal),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                const SubHeading(text: "Recents"),
                const CustomCarousel(),
                const SubHeading(text: "Categories"),
                filledRouteBtn(Icons.crop_original, "Whiteboard",
                    "Whiteboard-Screen", context),
                filledRouteBtn(Icons.notes, "Notes", "Notes-Screen", context),
                filledRouteBtn(
                    Icons.check_box, "To Do", "To-Do-Screen", context),
                filledRouteBtn(
                    Icons.edit_document, "Scripts", "Scripts-Screen", context),
                const SubHeading(text: "Storage"),
                // filledRouteBtn(Icons.location_city, "Local/SMB", ,context),
                // filledRouteBtn(Icons.cloud, "iCloud", ,context),
                // filledRouteBtn(Icons.wb_cloudy, "OneDrive",,context),
                // filledRouteBtn(Icons.add_to_drive_outlined, "Google Drive",,context),
                // filledRouteBtn(Icons.flash_on, "Brainstorm Cloud",,context),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: PopupMenuButton(
              offset: Offset.fromDirection(0, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              color: context.isDarkMode
                  ? const BrainstormTheme().darkAccentColor
                  : const BrainstormTheme().lightAccentColor,
              onSelected: (value) {
                switch (value) {
                  case 1:
                    Navigator.pushNamed(context, '/Profile-Screen');
                    break;
                  case 2:
                    Navigator.pushNamed(context, '/Notes-Work-Screen');
                    break;
                  case 3:
                    Navigator.pushNamed(context, '/');
                    break;
                  case 4:
                    Navigator.pushNamed(context, '/');
                    break;
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: ListTile(
                    leading: Icon(
                      Icons.crop_original,
                      color: const BrainstormTheme().primaryColor,
                    ),
                    title: Text('Whiteboard',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: ListTile(
                    leading: Icon(
                      Icons.notes,
                      color: const BrainstormTheme().primaryColor,
                    ),
                    title: Text('Notes',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: ListTile(
                    leading: Icon(
                      Icons.check_box,
                      color: const BrainstormTheme().primaryColor,
                    ),
                    title: Text(
                      'Todo',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: ListTile(
                    leading: Icon(
                      Icons.edit_document,
                      color: const BrainstormTheme().primaryColor,
                    ),
                    title: Text('Scripts',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
              ],
              tooltip: 'New',
            ),
          ),
        ),
      );
}
