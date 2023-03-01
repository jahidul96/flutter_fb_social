import 'package:flutter/material.dart';
import 'package:social_flutter/db/post_data.dart';
import 'package:social_flutter/widgets/appbar.dart';
import 'package:social_flutter/widgets/single_post.dart';

class VideoScreen extends StatefulWidget {
  static const routeName = "videos";
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        CustomAppBar(
          text: "Videos",
          menu: false,
          setting: true,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return SinglePostComp(
                  postdata: posts[index],
                );
              },
            ),
          ),
        ),
      ],
    ));
  }
}
