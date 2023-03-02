import 'package:flutter/material.dart';
import 'package:social_flutter/db/post_data.dart';
import 'package:social_flutter/navigation/bottom_nav.dart';
import 'package:social_flutter/utils/files.dart';
import 'package:social_flutter/widgets/friends_showcase_profile.dart';
import 'package:social_flutter/widgets/post_placeholder.dart';
import 'package:social_flutter/widgets/product.dart';
import 'package:social_flutter/widgets/single_post.dart';
import 'package:social_flutter/widgets/small_button.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class Profile extends StatefulWidget {
  static const routeName = "profile";
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  double coverSize = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextComp(
          text: "Akash",
          size: 18,
        ),
        leadingWidth: 45,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // cover pic
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  personimg,
                  width: double.infinity,
                  height: coverSize,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: coverSize - 50,
                  left: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(coverSize / 2),
                    child: Image.network(
                      personimg,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 70),

            // name and profile details
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextComp(
                    text: "Akash",
                    size: 22,
                  ),
                  const SizedBox(height: 10),
                  // button
                  Row(
                    children: [
                      SmallButton(
                        text: "Add Story",
                        buttonColor: Colors.blue,
                        radius: 6,
                        size: 34,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      SmallButton(
                        text: "Edit Profile",
                        buttonColor: Colors.grey.shade300,
                        radius: 6,
                        size: 34,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 34,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                        ),
                        child: const Icon(
                          Icons.more_horiz,
                          size: 17,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20),

                  // followers component
                  icontextcomp(
                    icon: Icons.watch_later,
                    text: "Joined on 4th Dec 2018",
                  ),
                  const SizedBox(height: 10),
                  icontextcomp(
                    icon: Icons.done_all,
                    text: "Followed by 220",
                  ),
                  const SizedBox(height: 10),
                  icontextcomp(
                    icon: Icons.more_horiz,
                    text: "See more about yourself",
                  ),
                  const SizedBox(height: 20),

                  // friends
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextComp(
                        text: "Friends",
                        size: 18,
                      ),
                      TextComp(
                        text: "Sell All",
                        size: 14,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 6,
                      mainAxisExtent: 130,
                    ),
                    itemCount: 6,
                    itemBuilder: ((context, index) {
                      return FriendsShowCaseProfile();
                    }),
                  ),

                  // post placeholder
                  PostPlaceholder(
                    onTap: () {},
                  ),
                ],
              ),
            ),

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
        ),
      ),
    );
  }

  Widget icontextcomp({required IconData icon, required String text}) => Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          TextComp(
            text: text,
            fontweight: FontWeight.w500,
          )
        ],
      );
}
