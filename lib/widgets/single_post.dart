import 'package:flutter/material.dart';
import 'package:social_flutter/models/post_model.dart';

class SinglePostComp extends StatefulWidget {
  PostModel postdata;
  SinglePostComp({super.key, required this.postdata});

  @override
  State<SinglePostComp> createState() => _SinglePostCompState();
}

class _SinglePostCompState extends State<SinglePostComp> {
  final img =
      "https://thumbs.dreamstime.com/b/portrait-spontaneous-smiling-bearded-man-positive-young-over-gray-background-47697687.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // top profile content
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    widget.postdata.profileimg,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.postdata.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            const Icon(
                              Icons.public,
                              size: 14,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              widget.postdata.postedAt,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  size: 25,
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.postdata.caption,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 6),

          // post image
          Image.network(
            widget.postdata.postImg,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 10),
          // reactions container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: const [
                Image(
                  image: AssetImage("assets/like.png"),
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage("assets/love.png"),
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage("assets/star.png"),
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),

          // post buttons
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                postButton(
                    icon: Icons.thumb_up,
                    text: widget.postdata.likes.toString()),
                postButton(
                    icon: Icons.chat_bubble,
                    text: widget.postdata.commnets.toString()),
                postButton(
                    icon: Icons.share, text: widget.postdata.share.toString()),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget postButton({
    required IconData? icon,
    required String text,
  }) =>
      Container(
        width: 100,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(width: 5),
            Text(text)
          ],
        ),
      );
}
