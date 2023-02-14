import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController textController;
  final Widget? icon;
  final String hintText;
  const TextInput(
      {required this.textController,
      required this.hintText,
      Key? key,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: textController,
        onChanged: (value) {
          //Do something
        },
        decoration: InputDecoration(
          filled: true,
          icon: icon,
          fillColor: const Color(0xff3D3C3C),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xff7B7878)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3D3C3C), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3D3C3C), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
