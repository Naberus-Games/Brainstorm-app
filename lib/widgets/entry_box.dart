import 'package:flutter/material.dart';
import '../theme.dart';
import '../main.dart';

const leftVal = 20.0, rightVal = 20.0, topVal = 4.0, bottomVal = 4.0;
const radialVal = 30.0;

Widget customTextField(
    String hint, IconData? icon, bool obscureText, BuildContext context) {
  return Padding(
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
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 17),
          hintText: hint,
          prefixIcon: Icon(icon),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(20),
        ),
        obscureText: obscureText,
      ),
    ),
  );
}
