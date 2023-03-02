// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:social_flutter/screens/menu.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  bool menu;
  bool setting;
  Color? color;
  double fontsize;
  FontWeight? fontweight;

  CustomAppBar({
    super.key,
    this.setting = false,
    required this.text,
    required this.menu,
    this.fontsize = 25,
    this.fontweight,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      alignment: const Alignment(-1, 0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: fontsize,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.6,
              ),
            ),
            Row(
              children: [
                setting
                    ? IconComp(icon: Icons.settings, onTap: () {})
                    : Container(),

                // spacing
                setting ? const SizedBox(width: 10) : Container(),

                // search icon button
                IconComp(icon: Icons.search, onTap: () {}),

                const SizedBox(width: 8),

                // menu icon button
                menu
                    ? IconComp(
                        icon: Icons.menu,
                        onTap: () {
                          Navigator.pushNamed(context, MenuPage.routeName);
                        },
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget IconComp({required IconData icon, required Function()? onTap}) =>
      InkWell(
        onTap: onTap,
        child: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 231, 226, 226),
          child: Icon(
            icon,
            color: Colors.black,
            size: 25,
          ),
        ),
      );
}
