import 'package:flutter/material.dart';
import 'package:social_flutter/utils/app_color.dart';
import 'package:social_flutter/utils/files.dart';
import 'package:social_flutter/widgets/active_user.dart';
import 'package:social_flutter/widgets/appbar.dart';
import 'package:social_flutter/widgets/chat_profile.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = "chat";
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            CustomAppBar(
              text: "Messages",
              menu: false,
              setting: true,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // active user
                    Container(
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(vertical: 3),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 85,
                            color: Colors.white,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: ListView.builder(
                                padding: const EdgeInsets.only(left: 6),
                                physics: const ClampingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  if (index == 0) {
                                    return addComp();
                                  }
                                  return const ActiveUser();
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),

                    // chats
                    ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return chatprofile();
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget addComp() => Row(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 45,
                  height: 45,
                  color: Colors.grey.shade300,
                  child: const Icon(
                    Icons.add_a_photo,
                    size: 25,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              TextComp(
                text: "Add story",
                fontweight: FontWeight.w500,
                size: 13,
              ),
            ],
          ),
          const SizedBox(width: 6),
        ],
      );
}
