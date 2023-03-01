import 'package:flutter/material.dart';
import 'package:social_flutter/models/post_model.dart';
import 'package:social_flutter/widgets/text_comp.dart';

Widget chatprofile({required PostModel data}) => Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    data.profileimg,
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: TextComp(
                      text: data.postedAt,
                      size: 13,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextComp(
                        text: data.name,
                        size: 16,
                      ),
                      const SizedBox(height: 3),
                      TextComp(
                        text: "hello",
                        fontweight: FontWeight.normal,
                        size: 12,
                        color: Colors.grey.shade900,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
