// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

const MaterialColor themeColor = Colors.lightBlue;

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 25.0;

Widget customBtn(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(
        left: leftVal, right: rightVal, top: topVal, bottom: bottomVal),
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(radialVal),
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

Widget InfoCard(String text) {
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
          Text(text,
              style: const TextStyle(color: Colors.white),
              textScaleFactor: 1.2),
        ],
      ),
    ),
  );
}

Widget customBtn_with_modifier(IconData icon, String text, bool switchValue) {
  return Padding(
    padding: const EdgeInsets.only(
        left: leftVal, right: rightVal, top: topVal, bottom: bottomVal),
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(radialVal),
        ),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, color: themeColor),
          ),
          const SizedBox(width: 12.0),
          Text(text,
              style: const TextStyle(color: Colors.white),
              textScaleFactor: 1.2),
          const Spacer(),
          Switch(
            value: switchValue,
            onChanged: (value) {
              //update value
            },
            activeTrackColor: themeColor,
            activeColor: themeColor,
          ),
        ],
      ),
    ),
  );
}
