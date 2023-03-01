import 'package:flutter/material.dart';
import 'package:social_flutter/models/post_model.dart';
import 'package:social_flutter/utils/app_color.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class ActiveUser extends StatelessWidget {
  PostModel user;
  ActiveUser({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  user.profileimg,
                  width: 46,
                  height: 46,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: activeColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3),
          TextComp(
            text: user.name,
            fontweight: FontWeight.w500,
            size: 13,
          )
        ],
      ),
    );
    ;
  }
}
