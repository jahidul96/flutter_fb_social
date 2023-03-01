import 'package:flutter/material.dart';
import 'package:social_flutter/models/post_model.dart';
import 'package:social_flutter/utils/files.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class NotifyComp extends StatelessWidget {
  PostModel notification;
  NotifyComp({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  notification.profileimg,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 25,
                  height: 25,
                  color: Colors.white,
                  child: const Icon(
                    Icons.group,
                    size: 16,
                  ),
                ),
              )
            ],
          ),

          const SizedBox(width: 7),

          // right container
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextComp(
                          text: notification.name,
                        ),
                        TextComp(
                          text: " likes your photo",
                        ),
                      ],
                    ),
                    const Icon(Icons.more_horiz)
                  ],
                ),
                TextComp(
                  text: notification.postedAt + " ago",
                  fontweight: FontWeight.w500,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
