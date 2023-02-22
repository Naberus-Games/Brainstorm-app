import 'package:flutter/material.dart';
import 'package:brainstorm/widgets/categories_button.dart';
import 'package:brainstorm/widgets/custom_headings.dart';

import '../../widgets/entry_box.dart';

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
              customTextField(
                  "Enter your item to add", Icons.shopping_bag, false, context),
              customBtn(Icons.add, "Add Your Item", context),
              const SubHeading(
                  text: "Click items below to add\na frequent item"),
              customBtn(Icons.apple, "Apple", context),
              customBtn(Icons.local_drink, "Milk", context),
              customBtn(Icons.rectangle, "Bread", context),
              customBtn(Icons.smartphone, "Phone Case", context),
              customBtn(Icons.mouse, "Mouse", context),
              filledUpdateBtn('Update', null, context),
            ],
          ),
        ),
      );
}
