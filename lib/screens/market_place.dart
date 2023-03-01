import 'package:flutter/material.dart';
import 'package:social_flutter/utils/files.dart';
import 'package:social_flutter/widgets/appbar.dart';
import 'package:social_flutter/widgets/product.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class MarketPlaceScreen extends StatefulWidget {
  static const routeName = "marketplace";
  const MarketPlaceScreen({super.key});

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomAppBar(
            text: "Martketplace",
            menu: false,
            setting: true,
          ),

          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                mainAxisExtent: 240,
              ),
              itemCount: 10,
              itemBuilder: ((context, index) {
                return ProductItem();
              }),
            ),
          ),

          // sell items
        ],
      )),
    );
  }
}
