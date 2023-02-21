import 'package:brainstorm/main.dart';
import 'package:brainstorm/theme.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';
import '../../widgets/custom_carousel.dart';
import 'package:flutter/material.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 30.0;

class NotesWorkScreen extends StatelessWidget {
  const NotesWorkScreen({super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          body: const CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 150,
                floating: false,
                pinned: true,
                title: Text(
                  "Files",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                centerTitle: false,
                flexibleSpace: const FlexibleSpaceBar(),
              ),
              SliverToBoxAdapter(
                child: CustomCarousel(),
              )
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
                    Navigator.pushNamed(context, '/Profile-Screen');
                    break;
                  case 2:
                    Navigator.pushNamed(context, '/Settings-Screen');
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
