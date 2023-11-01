import 'package:flutter/material.dart';
import 'package:pro_1/widgets/text_wgt.dart';

class MyButtonWidget extends StatelessWidget {
  MyButtonWidget({
    super.key,
    this.color = Colors.black,
    required this.text,
    required this.function,
  });

  Color color;
  final MyTextWidget text;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: text,
        ),
      ),
    );
  }
}
