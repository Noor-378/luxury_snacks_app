import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/shared/constants/const_text.dart';
import 'package:luxury_snacks_app/shared/styles/colors.dart';
import 'package:luxury_snacks_app/shared/styles/custom_text_style.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Row(
              children: [
                CustomTextStyle(
                  text: "1",
                ),
                SizedBox(
                  width: 5,
                ),
                CustomTextStyle(
                  text: "items in cart",
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: gColor,
                  ),
                  child: Image.asset(
                    pizzaImage,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextStyle(
                      text: "cheese Pizza",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextStyle(
                      text: "\$15",
                      color: mainColor,
                    ),
                  ],
                ),
                SizedBox(
                  width: 2,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_circle_outline,
                  ),
                  color: Colors.red,
                ),
                const CustomTextStyle(
                  text: "1",
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: gColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
