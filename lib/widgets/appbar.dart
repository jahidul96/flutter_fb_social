import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool menu;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.menu,
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
              title,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 30,
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
