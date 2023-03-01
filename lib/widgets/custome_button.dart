// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:social_flutter/utils/app_color.dart';

class CustomeButton extends StatelessWidget {
  String text;
  Color backgroundColor;
  FontWeight weight;
  CustomeButton(
      {super.key,
      required this.text,
      this.backgroundColor = Colors.white,
      this.weight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: weight,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
          elevation: MaterialStateProperty.all(0),
        ),
      ),
    );
  }
}
