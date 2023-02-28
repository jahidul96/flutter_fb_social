// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:social_flutter/utils/app_color.dart';

class CustomeButton extends StatelessWidget {
  String text;
  CustomeButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.grey.shade200,
          ),
          elevation: MaterialStateProperty.all(0),
        ),
      ),
    );
  }
}
