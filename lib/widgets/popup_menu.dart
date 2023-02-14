import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Color color;
  final Widget? icon;
  const Popup(
      {required this.menuList,
      this.color = Colors.black,
      this.icon = const Icon(
        Icons.more_vert,
        color: Color(0xff4338CA),
      ),
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      color: color,
      icon: icon,
      itemBuilder: (BuildContext context) => menuList,
    );
  }
}
