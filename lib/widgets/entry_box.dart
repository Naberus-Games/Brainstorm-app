import 'package:brainstorm/widgets/text_input.dart';
import 'package:flutter/material.dart';

class CustomEntry extends StatelessWidget {
  final String hintText;

  const CustomEntry({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
      child: TextInput(
          textController: TextEditingController(), hintText: hintText),
    );
  }
}

// class CustomPassEntry extends StatelessWidget {
//   final String hintText;

//   const CustomPassEntry({super.key, required this.hintText});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
//       child: TextInput(
//           textController: TextEditingController(),
//           hintText: hintText,
//           obscureText: true),
//     );
//   }
// }

//added the obscureText field to make it password field but doesnt work :(
