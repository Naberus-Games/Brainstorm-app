import 'package:flutter/material.dart';

const Color themeColor = Color(0xff74D9DF);

Widget makeButton(IconData icon, String text) {
  return Padding(
    padding:
        const EdgeInsets.only(left: 20.0, right: 20.0, top: 4.0, bottom: 4.0),
    child: Container(
      decoration: const BoxDecoration(
        color: Color(0xff3D3C3C),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Icon(icon, color: themeColor),
          const SizedBox(width: 12.0),
          Text(text,
              style: const TextStyle(color: Colors.white),
              textScaleFactor: 1.2),
        ],
      ),
    ),
  );
}
