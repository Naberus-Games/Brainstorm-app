import 'package:flutter/material.dart';

class CustomHeading extends StatelessWidget {
  final String text;
  final MainAxisAlignment alignment;
  final FontWeight fontWeight;
  final double padding;

  const CustomHeading({
    super.key,
    required this.text,
    this.alignment = MainAxisAlignment.start,
    this.fontWeight = FontWeight.w500,
    this.padding = 12,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(padding),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: fontWeight),
          ), //Change
        ),
      ],
    );
  }
}
