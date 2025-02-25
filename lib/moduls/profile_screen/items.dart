import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/shared/styles/colors.dart';
import 'package:luxury_snacks_app/shared/styles/custom_text_style.dart';

class Items extends StatelessWidget {
  const Items(
      {super.key,
      required this.itemText,
      required this.icon,
      required this.onPressed});
  final String itemText;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            icon,
            color: mainColor,
          ),
          const SizedBox(
            width: 15,
          ),
          CustomTextStyle(
            text: itemText,
            fontSize: 18,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
