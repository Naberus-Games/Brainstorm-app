import 'package:brainstorm/main.dart';
import 'package:brainstorm/theme.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_carousel.dart';
import 'login_screen.dart';
import 'settings_screen.dart';

const MaterialColor themeColor = Colors.lightBlue;

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
                    icon: const Icon(Icons.person, color: themeColor),
                    color: context.isDarkMode
                        ? const BrainstormTheme().darkAccentColor
                        : const BrainstormTheme().lightAccentColor,
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: ListTile(
                          leading: const Icon(
                            Icons.person,
                            color: themeColor,
                          ),
                          title: Text('Profile',
                              style: Theme.of(context).textTheme.bodyMedium),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             const ProfileScreen()));
                          },
                        ),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: const Icon(
                            Icons.settings,
                            color: themeColor,
                          ),
                          title: Text('Setting',
                              style: Theme.of(context).textTheme.bodyMedium),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SettingsScreen()));
                          },
                        ),
                      ),
                      PopupMenuItem(
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
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()),
                                (route) => false);
                          },
                        ),
                      ),
                    ],
                    tooltip: 'Profile',
                  ),
                ),
              ),
            ],
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
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    leading: const Icon(
                      Icons.crop_original,
                      color: themeColor,
                    ),
                    title: Text('Whiteboard',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: const Icon(
                      Icons.notes,
                      color: themeColor,
                    ),
                    title: Text('Notes',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: const Icon(
                      Icons.check_box,
                      color: themeColor,
                    ),
                    title: Text(
                      'Todo',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: const Icon(
                      Icons.edit_document,
                      color: themeColor,
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
