import 'package:flutter/material.dart';
import 'package:social_flutter/utils/files.dart';
import 'package:social_flutter/widgets/small_button.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class FriendReqProfile extends StatelessWidget {
  const FriendReqProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // profile img
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              personimg,
              width: 70,
              height: 70,
            ),
          ),

          const SizedBox(width: 10),

          // left content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextComp(
                      text: "Akash",
                      size: 18,
                      fontweight: FontWeight.w500,
                    ),
                    TextComp(
                      text: "4d",
                      size: 14,
                      fontweight: FontWeight.normal,
                      color: Colors.grey.shade900,
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                // mutual friends
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            personimg,
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    TextComp(
                      text: "10 mutual friends",
                      color: Colors.grey.shade500,
                      fontweight: FontWeight.w500,
                    )
                  ],
                ),

                const SizedBox(height: 5),

                // buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallButton(
                      text: "Accept",
                      buttonColor: Colors.blue,
                      size: 30,
                      color: Colors.white,
                      radius: 6,
                    ),
                    SmallButton(
                      text: "Delete",
                      buttonColor: Colors.grey.shade300,
                      size: 30,
                      radius: 6,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
