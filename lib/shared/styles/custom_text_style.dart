import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle({
    super.key,
    required this.text,
    this.fontSize = 15,
    this.color = Colors.black,
    this.maxLines,  this.overflow,
  });
  final String text;
  final double fontSize;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w900,
        color: color,
      ),
    );
  }
}
