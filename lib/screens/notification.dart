import 'package:flutter/material.dart';
import 'package:social_flutter/db/post_data.dart';
import 'package:social_flutter/widgets/appbar.dart';
import 'package:social_flutter/widgets/custome_button.dart';
import 'package:social_flutter/widgets/notify.dart';

class NotificationScreen extends StatefulWidget {
  static const routeName = "friendrequest";
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
          child: Column(
        children: [
          // app bar
          CustomAppBar(
            text: "Notifications",
            menu: false,
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: CustomeButton(
                      text: "Mark All as Read",
                    ),
                  ),

                  // notification
                  Container(
                    color: Colors.white,
                    child: ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: posts.length,
                        itemBuilder: (context, index) {
                          return NotifyComp(notification: posts[index]);
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
