import 'package:brainstorm/main.dart';
import 'package:brainstorm/theme.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';
import '../../widgets/custom_carousel.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_popup_menu_buttom.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 30.0;

class FilesScreens extends StatelessWidget {
  const FilesScreens({super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
        // Dismisses the keyboard when the user taps elsewhere on the screen.

        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
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
                const CustomCarousel(),
                const CustomHeading(text: 'Categories'),
                filledRouteBtn(Icons.crop_original, "Whiteboard",
                    "Whiteboard-Screen", context),
                filledRouteBtn(Icons.notes, "Notes", "Notes-Screen", context),
                filledRouteBtn(
                    Icons.check_box, "To Do", "To-Do-Screen", context),
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
        ),
      );
}
