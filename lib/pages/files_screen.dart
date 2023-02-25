import 'package:brainstorm/main.dart';
import 'package:brainstorm/theme.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';
import '../../widgets/custom_carousel.dart';
import 'package:flutter/material.dart';

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
        // ignore: sort_child_properties_last
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: false,
                pinned: false,
                automaticallyImplyLeading: false,
                actions: [
                  //Popup Buttons
                  Padding(
                    padding: const EdgeInsets.all(9.5),
                    child: PopupMenuButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      icon: Icon(
                        Icons.account_circle,
                        color: const BrainstormTheme().primaryColor,
                        size: 40,
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
                            Navigator.pushNamed(context, '/Settings-Screen');
                            break;
                          case 3:
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/', (route) => false);
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
                ],
              ),
              SliverAppBar(
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                flexibleSpace: const FlexibleSpaceBar(
                  titlePadding: EdgeInsets.fromLTRB(12, 0, 0, 100),
                  title: Text(
                    "Files",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  centerTitle: false,
                ),
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
              const SliverToBoxAdapter(
                child: CustomHeading(text: 'Recents'),
              ),
              const SliverToBoxAdapter(
                child: CustomCarousel(),
              ),
              const SliverToBoxAdapter(
                child: CustomHeading(text: 'Categories'),
              ),
              SliverToBoxAdapter(
                child: filledRouteBtn(Icons.crop_original, "Whiteboard",
                    "Whiteboard-Screen", context),
              ),
              SliverToBoxAdapter(
                  child: filledRouteBtn(
                      Icons.notes, "Notes", "Notes-Screen", context)),
              SliverToBoxAdapter(
                  child: filledRouteBtn(
                      Icons.check_box, "To Do", "To-Do-Screen", context)),
              SliverToBoxAdapter(
                  child: filledRouteBtn(Icons.edit_document, "Scripts",
                      "Scripts-Screen", context)),
              const SliverToBoxAdapter(
                child: CustomHeading(text: 'Storage'),
              ),
              SliverToBoxAdapter(
                child: filledRouteBtn(Icons.location_city, "Local/SMB",
                    "Local-Files-Screen", context),
              ),
              SliverToBoxAdapter(
                  child: filledRouteBtn(
                      Icons.cloud, "iCloud", "iCloud-Files-Screen", context)),
              SliverToBoxAdapter(
                  child: filledRouteBtn(Icons.wb_cloudy, "OneDrive",
                      "Onedrive-Files-Screen", context)),
              SliverToBoxAdapter(
                child: filledRouteBtn(Icons.add_to_drive_outlined,
                    "Google Drive", "Google-Drive-File-Screen", context),
              ),
              SliverToBoxAdapter(
                  child: filledRouteBtn(Icons.flash_on, "Brainstorm Cloud",
                      "Brainstorm-Files-Screen", context)),
              const SliverToBoxAdapter(
                  child: Padding(padding: EdgeInsets.all(15), child: Text(''))),
            ],
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
                    Navigator.pushNamed(context, '/Whiteboard-Work-Screen');
                    break;
                  case 2:
                    Navigator.pushNamed(context, '/Notes-Work-Screen');
                    break;
                  case 3:
                    Navigator.pushNamed(context, '/To-Do-Work-Screen');
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
                      'To Do',
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
