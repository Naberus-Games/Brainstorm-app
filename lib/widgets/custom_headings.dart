import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  final String text;

  const SubHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class MainHeading extends StatelessWidget {
  final String text;

  const MainHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ), //Change
        ),
      ],
    );
  }
}
