import 'package:flutter/material.dart';
import 'package:social_flutter/widgets/appbar.dart';
import 'package:social_flutter/widgets/custome_button.dart';
import 'package:social_flutter/widgets/friend_req_profile.dart';
import 'package:social_flutter/widgets/small_button.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class FriendRequestScreen extends StatefulWidget {
  static const routeName = "friendrequest";
  const FriendRequestScreen({super.key});

  @override
  State<FriendRequestScreen> createState() => _FriendRequestScreenState();
}

class _FriendRequestScreenState extends State<FriendRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // custome app bar
          CustomAppBar(
            text: "Friends",
            menu: false,
          ),

          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // tab buttons
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SmallButton(
                        text: "Your Friends",
                        buttonColor: Colors.grey.shade300,
                      ),
                      const SizedBox(width: 20),
                      SmallButton(
                        text: "Suggestions",
                        buttonColor: Colors.grey.shade300,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // friend request link text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextComp(
                        text: " Friend request",
                        size: 18,
                      ),
                      TextComp(
                        text: "See All",
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),

                // request profile....
                const FriendReqProfile(),
                const FriendReqProfile(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomeButton(text: "See All"),
                ),

                const SizedBox(height: 20),

                // suggested friends
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextComp(
                        text: "Suggested",
                        size: 18,
                      ),
                      TextComp(
                        text: "See All",
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),

                // suggested

                const FriendReqProfile(),
                const FriendReqProfile(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
