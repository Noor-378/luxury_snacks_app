import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/moduls/home_screen/third_part_item.dart';
import 'package:luxury_snacks_app/shared/constants/const_text.dart';

class ThirdPart extends StatelessWidget {
  const ThirdPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ThirdPartItem(
          containerImage: beefImage,
          height: 125,
          text: "Beef Burger",
          price: "\$5",
          onTap: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ThirdPartItem(
          containerImage: pizzaImage,
          height: 125,
          text: "Cheese Pizza",
          price: "\$15",
          onTap: () {},
        ),
      ],
    );
  }
}
