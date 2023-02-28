import 'package:flutter/material.dart';
import 'package:social_flutter/db/post_data.dart';
import 'package:social_flutter/db/story_data.dart';
import 'package:social_flutter/widgets/post_placeholder.dart';

import 'package:social_flutter/widgets/add_story.dart';
import 'package:social_flutter/widgets/appbar.dart';
import 'package:social_flutter/widgets/single_post.dart';
import 'package:social_flutter/widgets/story.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "Home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      // appbar content
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              text: "facebook",
              menu: true,
              color: Colors.blue,
              fontsize: 28,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PostPlaceholder(),

                  // story comp
                  Container(
                    height: 180,
                    margin: const EdgeInsets.only(top: 5),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        itemCount: storys.length,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return const AddStory();
                          }
                          return Story(
                            story: storys[index],
                          );
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),
                  // posts

                  ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return SinglePostComp(
                        postdata: posts[index],
                      );
                    },
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
