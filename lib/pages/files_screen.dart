import 'package:brainstorm/pages/profile_screen.dart';
import 'package:brainstorm/widgets/categories_button.dart';

import '../widgets/search_input.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_carousel.dart';
import 'login_screen.dart';
import 'settings_screen.dart';

const Color themeColor = Color(0xff74D9DF);

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
                        'Files',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ), //Change
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
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
                          color: const Color(0xff3D3C3C),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.person,
                                  color: themeColor,
                                ),
                                title: Text(
                                  'Profile',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProfileScreen()));
                                },
                              ),
                            ),
                            PopupMenuItem(
                              child: ListTile(
                                leading: const Icon(
                                  Icons.settings,
                                  color: themeColor,
                                ),
                                title: Text(
                                  'Setting',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(color: Colors.white),
                                ),
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
                                          builder: (context) =>
                                              const LoginScreen()),
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
                        'Recents',
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
                const CustomCarousel(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Categories',
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
                customBtn(Icons.crop_original, "Whiteboard"),
                customBtn(Icons.notes, "Notes"),
                customBtn(Icons.check_box, "Todo"),
                customBtn(Icons.edit_document, "Scripts"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Storage',
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
                // customBtn(Icons.location_city, "Local/SMB"),
                // customBtn(Icons.cloud, "iCloud"),
                // customBtn(Icons.wb_cloudy, "OneDrive"),
                // customBtn(Icons.add_to_drive_outlined, "Google Drive"),
                // customBtn(Icons.flash_on, "Brainstorm Cloud"),
              ],
            ),
          ),
          backgroundColor: const Color(0xff292828),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: themeColor,
            child: PopupMenuButton(
              offset: Offset.fromDirection(0, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              color: const Color(0xff3D3C3C),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    leading: const Icon(
                      Icons.crop_original,
                      color: themeColor,
                    ),
                    title: Text(
                      'Whiteboard',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: const Icon(
                      Icons.notes,
                      color: themeColor,
                    ),
                    title: Text(
                      'Notes',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
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
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: const Icon(
                      Icons.edit_document,
                      color: themeColor,
                    ),
                    title: Text(
                      'Scripts',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
              tooltip: 'New',
            ),
          ),
        ),
      );
}
