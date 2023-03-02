import 'package:flutter/material.dart';
import 'package:social_flutter/utils/files.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class MenuPage extends StatelessWidget {
  static const routeName = "menupage";
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextComp(
          text: "Menu",
          size: 18,
        ),
        elevation: 1,
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            horizontalTitleGap: 6,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                personimg,
                width: 40,
                height: 40,
              ),
            ),
            title: TextComp(
              text: "Akash",
              size: 16,
              fontweight: FontWeight.w500,
            ),
            subtitle: TextComp(
              text: "View your profile",
              fontweight: FontWeight.w500,
              size: 17,
            ),
          ),
        ],
      ),
    );
  }
}
