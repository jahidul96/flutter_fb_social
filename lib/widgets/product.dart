import 'package:flutter/material.dart';
import 'package:social_flutter/utils/files.dart';
import 'package:social_flutter/widgets/text_comp.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          personimg,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 160,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComp(text: "400"),
              const SizedBox(height: 3),
              TextComp(text: "Shirt for sell"),
            ],
          ),
        )
      ],
    );
    ;
  }
}
