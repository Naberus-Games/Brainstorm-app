import 'package:flutter/material.dart';

const MaterialColor themeColor = Colors.lightBlue;

class BarButton extends StatelessWidget {
  final String text;
  // final Function() onPressed;
  const BarButton({required this.text, onPressed, Key? key}) : super(key: key);

//remove this getter when making button do something and uncomment final Function()
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    const primaryColor = themeColor;
    const secondaryColor = Colors.lightBlueAccent;
    const accentColor = Colors.white;
    const double borderRadius = 15;

    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient:
                const LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(const EdgeInsets.only(
                  right: 175, left: 175, top: 16, bottom: 16)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: accentColor, fontSize: 16),
          ),
        ));
  }
}
