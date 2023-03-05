//import 'package:brainstorm/main.dart';
import 'package:brainstorm/theme.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';
import '../widgets/recents.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_popup_menu_buttom.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 30.0;
final GlobalKey<ScaffoldState> _key = GlobalKey();

class FilesScreens extends StatefulWidget {
  const FilesScreens({super.key});

  @override
  State<FilesScreens> createState() => _FilesScreensState();
}

class _FilesScreensState extends State<FilesScreens> {
  @override
  Widget build(BuildContext context) {
    // Gets the height and width of the screen.
    //final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      // Dismisses the keyboard when the user taps elsewhere on the screen.
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },

      // ignore: sort_child_properties_last
      child: Scaffold(
        key: _key,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar.large(
              floating: true,
              pinned: true,
              centerTitle: false,
              automaticallyImplyLeading: false,
              flexibleSpace: const FlexibleSpaceBar(
                titlePadding: EdgeInsets.fromLTRB(15, 0, 0, 5),
                title: Text(
                  "Files",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                centerTitle: false,
              ),
              leading: IconButton(
                  icon: Icon(Icons.menu,
                      color: const BrainstormTheme().primaryColor, size: 30),
                  onPressed: () {
                    _key.currentState?.openDrawer();
                  }),
              actions: [
                IconButton(
                  icon: Icon(Icons.search,
                      color: const BrainstormTheme().primaryColor, size: 30),
                  onPressed: () {
                    //showSearch(context: context, delegate: Search());
                  },
                ),
                //Popup Buttons
                const ProfilePopupMenuButton(),
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              const CustomHeading(text: 'Recents'),
              const Recents(),
              const CustomHeading(text: 'Categories'),
              filledRouteBtn(Icons.crop_original, "Whiteboard",
                  "Whiteboard-Screen", context),
              filledRouteBtn(Icons.notes, "Notes", "Notes-Screen", context),
              filledRouteBtn(Icons.check_box, "To Do", "To-Do-Screen", context),
              filledRouteBtn(
                  Icons.edit_document, "Scripts", "Scripts-Screen", context),
              const CustomHeading(text: 'Storage'),
              filledRouteBtn(Icons.location_city, "Local/SMB",
                  "Local-Files-Screen", context),
              filledRouteBtn(
                  Icons.cloud, "iCloud", "iCloud-Files-Screen", context),
              filledRouteBtn(Icons.wb_cloudy, "OneDrive",
                  "Onedrive-Files-Screen", context),
              filledRouteBtn(Icons.add_to_drive_outlined, "Google Drive",
                  "Google-Drive-File-Screen", context),
              filledRouteBtn(Icons.flash_on, "Brainstorm Cloud",
                  "Brainstorm-Files-Screen", context),
              const Padding(padding: EdgeInsets.all(15), child: Text('')),
            ])),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const NewFilePopupMenuButton(),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Brainstorm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Files'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
