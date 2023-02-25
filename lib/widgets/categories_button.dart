import 'package:brainstorm/pages/Categories_files/todo_files_screen.dart';
import 'package:brainstorm/theme.dart';
import 'package:flutter/material.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 25.0;

Widget toDoAddBtn(IconData icon, String text, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
        left: leftVal, right: rightVal, top: topVal, bottom: bottomVal),
    child: TextButton.icon(
      onPressed: () {
        if (todoList.contains(text)) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Already added.')));
        } else {
          if (todoList.length < 15) {
            todoList.add(text);
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$text has been successfully added.')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Reached limit.')));
          }
        }
      },
      icon: Icon(icon),
      label: Text(
        text,
        textScaleFactor: 1.2,
      ),
      style: const ButtonStyle(alignment: Alignment.centerLeft),
    ),
  );
}

Widget filledRouteBtn(
    IconData icon, String text, String pageRoute, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
        left: leftVal, right: rightVal, top: topVal, bottom: bottomVal),
    child: FilledButton.icon(
      onPressed: () {
        Navigator.of(context).pushNamed('/$pageRoute');
      },
      icon: Icon(icon),
      label: Text(
        text,
        textScaleFactor: 1.2,
      ),
      style: const ButtonStyle(alignment: Alignment.centerLeft),
    ),
  );
}

Widget filledUpdateBtn(String text, String? action, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
        left: leftVal, right: rightVal, top: topVal, bottom: bottomVal),
    child: FilledButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ButtonStyle(
          alignment: Alignment.center,
          backgroundColor: MaterialStatePropertyAll<Color>(
              const BrainstormTheme().primaryColor)),
      child: Text(
        text,
        textScaleFactor: 1.2,
      ),
    ),
  );
}

Widget infoCard(String text) {
  return Padding(
    padding: const EdgeInsets.only(
        left: leftVal, right: rightVal, top: topVal, bottom: bottomVal),
    child: Container(
      decoration: const BoxDecoration(
        color: Color(0xff3D3C3C),
        borderRadius: BorderRadius.all(
          Radius.circular(radialVal),
        ),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Text(text, textScaleFactor: 1.2),
        ],
      ),
    ),
  );
}
