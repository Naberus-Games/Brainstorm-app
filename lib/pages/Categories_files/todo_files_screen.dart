import 'package:brainstorm/main.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';
import '../../widgets/categories_button.dart';
import '../../widgets/custom_headings.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 30.0;
const maxItems = SnackBar(
  content: Text('Max Items Reached'),
);

final List<String> todoList = ["fisrt", "next", "another one", "again", "cool"];

class ToDoFilesScreen extends StatelessWidget {
  const ToDoFilesScreen({super.key});

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
                  //Icon Button
                  const Text('Delete All'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: const BrainstormTheme().primaryColor,
                          )),
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
                    "To Do",
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
                          hintText: 'Enter index to delete',
                          prefixIcon: Icon(Icons.local_grocery_store),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: filledUpdateBtn('Delete Index', null, context),
              ),
              const SliverToBoxAdapter(
                child: SubHeading(text: '               My Shopping List'),
              ),
              _getToDoListSliver(todoList, context),
              const SliverToBoxAdapter(
                  child: Padding(padding: EdgeInsets.all(15), child: Text(''))),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: const BrainstormTheme().lightAccentColor,
            ),
            onPressed: () {
              //
              Navigator.pushNamed(context, '/To-Do-Work-Screen');
            },
          ),
        ),
      );
}

SliverList _getToDoListSliver(List list, BuildContext context) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return buildRow('${index + 1}. ${list[index]}');
      },
      childCount: list.length,
    ),
  );
}

buildRow(String title) {
  return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)));
}
