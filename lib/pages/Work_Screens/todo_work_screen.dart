import 'package:brainstorm/main.dart';
import 'package:flutter/material.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';

import '../../theme.dart';
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
              const MainHeading(text: '       CIS443 Shopping List'),
              Padding(
                padding: const EdgeInsets.only(
                    left: leftVal, right: rightVal, top: 0, bottom: 12),
                child: TextField(
                  controller: _indexController,
                  decoration: const InputDecoration(
                    hintText: "Enter your item to add",
                    prefixIcon: Icon(Icons.shopping_bag),
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
                    todoList.add(_indexController.text);
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(
                    "Add item",
                    textScaleFactor: 1.2,
                  ),
                  style: const ButtonStyle(alignment: Alignment.centerLeft),
                ),
              ),
              const SubHeading(
                  text: "Click items below to add\na frequent item"),
              customBtn(Icons.apple, "Apple", context),
              customBtn(Icons.local_drink, "Milk", context),
              customBtn(Icons.rectangle, "Bread", context),
              filledUpdateBtn('Show my list now', null, context),
            ],
          ),
        ),
      );
}
