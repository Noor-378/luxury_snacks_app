import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/shared/constants/const_text.dart';
import 'package:luxury_snacks_app/shared/styles/colors.dart';
import 'package:luxury_snacks_app/shared/styles/custom_text_style.dart';

class SecondPart extends StatelessWidget {
  const SecondPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 125,
      padding: const EdgeInsets.only(
        left: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            secondColor,
            Colors.black54,
          ],
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextStyle(
            text: "Today's offer\nFree box of Fries\non all orders above \$150",
            color: Colors.white,
            fontSize: 17,
          ),
          Image(
            height: 94,
            image: AssetImage(
              promotionsImage,
            ),
          ),
        ],
      ),
    );
  }
}
