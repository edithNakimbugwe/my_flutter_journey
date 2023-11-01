import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  MyTextWidget(
      {super.key,
      required this.text,
      this.colors = Colors.black,
      this.isHeading = false});

  final String text;
  Color colors;
  bool isHeading;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colors,
          fontSize: isHeading ? 17 : 14,
          fontWeight: isHeading ? FontWeight.bold : FontWeight.normal),
    );
  }
}
