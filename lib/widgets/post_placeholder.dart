import 'package:flutter/material.dart';
import 'package:social_flutter/utils/app_color.dart';
import 'package:social_flutter/utils/files.dart';

class PostPlaceholder extends StatelessWidget {
  Function()? onTap;
  PostPlaceholder({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: const Alignment(-1, 0),
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.only(
        top: 2,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                // profile image
                InkWell(
                  onTap: onTap,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      personimg,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
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
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // input container
                  Container(
                    alignment: const Alignment(-1, 0),
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text("What are you doing!"),
                  ),

                  const SizedBox(height: 6),

                  // bottom icon container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.video_call,
                            size: 22,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(width: 4),
                          Text("Room"),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.video_camera_front,
                            size: 20,
                            color: Colors.red,
                          ),
                          SizedBox(width: 4),
                          Text("Live"),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.place,
                            size: 20,
                            color: Colors.redAccent,
                          ),
                          SizedBox(width: 4),
                          Text("location"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: const [
  //                   Icon(
  //                     Icons.image,
  //                     size: 25,
  //                   ),
  //                   Text(
  //                     "Photos",
  //                     style:
  //                         TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
  //                   )
  //                 ],
  //               ),
}
