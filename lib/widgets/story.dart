import 'package:flutter/material.dart';
import 'package:social_flutter/models/post_model.dart';
import 'package:social_flutter/models/story.dart';
import 'package:social_flutter/utils/app_color.dart';

class Story extends StatelessWidget {
  StoryModel story;
  Story({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 170,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              story.img,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: activeColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                story.total.toString(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
