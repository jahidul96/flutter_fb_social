import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final bool menu;
  Color? color;
  double fontsize;
  FontWeight? fontweight;

  CustomAppBar({
    super.key,
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
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 231, 226, 226),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 8),
                menu
                    ? const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 231, 226, 226),
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 25,
                        ),
                      )
                    : const Text(""),
              ],
            )
          ],
        ),
      ),
    );
  }
}
