import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/font_family.dart';

class HeadingText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  TextAlign textAlign;

  HeadingText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 0.0,
    this.textAlign = TextAlign.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? AppFonts.headingSize : size,
          fontWeight: FontWeight.bold,
          fontFamily: FontFamily.contentFont),
    );
  }
}
