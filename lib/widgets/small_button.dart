// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  double size;
  final text;
  Color buttonColor;
  Color? color;
  double radius;
  double width;

  SmallButton({
    super.key,
    required this.text,
    required this.buttonColor,
    this.size = 40,
    this.width = 120,
    this.radius = 30,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
      width: width,
      height: size,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(radius)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    ));
  }
}
