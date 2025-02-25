import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/shared/constants/const_text.dart';
import 'package:luxury_snacks_app/shared/styles/colors.dart';
import 'package:luxury_snacks_app/shared/styles/custom_text_style.dart';

class FirstPart extends StatelessWidget {
  const FirstPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 93,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                  color: index == 0 ? secondColor : gColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image(
                  image: AssetImage(
                    menuImages[index],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextStyle(text: textList[index])
            ],
          );
        },
        itemCount: menuImages.length,
      ),
    );
  }
}
