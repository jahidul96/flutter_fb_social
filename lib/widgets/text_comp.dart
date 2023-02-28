import 'package:flutter/material.dart';

class TextComp extends StatelessWidget {
  final text;
  double size;
  Color? color;
  FontWeight fontweight;

  TextComp({
    super.key,
    required this.text,
    this.size = 15,
    this.color = Colors.black,
    this.fontweight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontweight,
      ),
    );
  }
}
