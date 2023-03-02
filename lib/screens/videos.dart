import 'package:flutter/material.dart';
import 'package:social_flutter/db/post_data.dart';
import 'package:social_flutter/db/video_tab_data.dart';
import 'package:social_flutter/models/videos_tab_model.dart';
import 'package:social_flutter/widgets/appbar.dart';
import 'package:social_flutter/widgets/single_post.dart';
import 'package:social_flutter/widgets/text_comp.dart';

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
              child: Column(
                children: [
                  // tabs
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        itemCount: videotabs.length,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return tab(tabData: videotabs[index], index: index);
                        }),
                  ),

                  // videos
                  ListView.builder(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tab({required VideoTabModel tabData, required index}) => Center(
        child: Container(
          decoration: BoxDecoration(
            color: index == 0 ? Colors.blue.shade100 : Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          height: 40,
          margin: const EdgeInsets.only(
            right: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                tabData.icon,
                size: 20,
              ),
              const SizedBox(width: 3),
              TextComp(text: tabData.name)
            ],
          ),
        ),
      );
}
