import 'package:flutter/material.dart';
import 'package:luxury_snacks_app/shared/styles/colors.dart';
import 'package:luxury_snacks_app/shared/styles/custom_text_style.dart';

class ThirdPartItem extends StatelessWidget {
  const ThirdPartItem({
    super.key,
    required this.onTap,
    required this.containerImage,
    required this.text,
    required this.height,
    required this.price,
  });
  final Function() onTap;
  final String containerImage;
  final String text;
  final double height;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            children: [
              Image(
                height: height,
                image: AssetImage(
                  containerImage,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                  left: 8,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: CustomTextStyle(
                            text: text,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextStyle(
                          text: price,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
