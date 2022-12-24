// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  double? fontSize;
  double? letterSpacing;
  Color? color;
  FontWeight? fontWeight;

  CustomText(
    {super.key, 
      required this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.letterSpacing,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: TextStyle(
        fontSize: fontSize ?? 16, 
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal, 
        letterSpacing: letterSpacing ?? 1.0
      ),
    );
  }
}