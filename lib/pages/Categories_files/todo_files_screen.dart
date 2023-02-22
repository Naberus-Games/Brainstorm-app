import 'package:brainstorm/main.dart';
import 'package:flutter/cupertino.dart';
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

class ToDoFilesScreen extends StatefulWidget {
  const ToDoFilesScreen({super.key});

  @override
  State<ToDoFilesScreen> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoFilesScreen> {
  late TextEditingController _indexController;

  @override
  void initState() {
    _indexController = TextEditingController();
    super.initState();
  }

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
                          onPressed: () {
                            setState(() {
                              todoList.clear();
                            });
                          },
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
                      child: TextField(
                        controller: _indexController,
                        decoration: const InputDecoration(
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
              CupertinoSliverRefreshControl(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 2));
                },
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: leftVal,
                      right: rightVal,
                      top: topVal,
                      bottom: bottomVal),
                  child: FilledButton(
                    onPressed: () {
                      //delete the item from the list at the specified index
                      if (_indexController.text != '') {
                        setState(() {
                          int index = int.parse(_indexController.text);
                          if (index > 0 && index <= todoList.length) {
                            todoList.removeAt(index - 1);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Index out of range')));
                          }
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Please enter an index')));
                      }
                    },
                    style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const BrainstormTheme().primaryColor)),
                    child: const Text(
                      "Delete Index",
                      textScaleFactor: 1.2,
                    ),
                  ),
                ),
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
            onPressed: () async {
              //
              await Navigator.pushNamed(context, '/To-Do-Work-Screen')
                  .then((_) {
                setState(() {});
              });
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
