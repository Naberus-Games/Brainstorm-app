import 'package:brainstorm/main.dart';
import 'package:flutter/material.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';

import '../../theme.dart';
// ignore: unused_import
import '../../widgets/entry_box.dart';
import '../Categories_files/todo_files_screen.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 25.0;
TextEditingController _indexController = TextEditingController();

class ToDoWorkScreen extends StatelessWidget {
  const ToDoWorkScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
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
                      'To Do',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const CustomHeading(
                text: 'CIS443 Shopping List',
                alignment: MainAxisAlignment.center,
                fontWeight: FontWeight.bold,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: leftVal, right: rightVal, top: 0, bottom: 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: context.isDarkMode
                        ? BrainstormTheme().darkAccentColor
                        : BrainstormTheme().lightAccentColor,
                    borderRadius: BorderRadius.circular(radialVal),
                  ),
                  child: TextField(
                    controller: _indexController,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 17),
                      hintText: 'Enter your item to add',
                      prefixIcon: Icon(Icons.local_grocery_store),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: leftVal,
                    right: rightVal,
                    top: topVal,
                    bottom: bottomVal),
                child: TextButton.icon(
                  onPressed: () {
                    if (todoList.contains(_indexController.text)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Already added.')));
                    } else {
                      if (todoList.length < 15) {
                        todoList.add(_indexController.text);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                '${_indexController.text} has been successfully added.')));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Reached limit.')));
                      }
                    }
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(
                    "Add item",
                    textScaleFactor: 1.2,
                  ),
                  style: const ButtonStyle(alignment: Alignment.centerLeft),
                ),
              ),
              const CustomHeading(
                  text: 'Click items below to add\na frequent item'),
              toDoAddBtn(Icons.apple, "Apple", context),
              toDoAddBtn(Icons.local_drink, "Milk", context),
              toDoAddBtn(Icons.rectangle, "Bread", context),
              filledUpdateBtn('Show my list now', null, context),
            ],
          ),
        ),
      );
}
