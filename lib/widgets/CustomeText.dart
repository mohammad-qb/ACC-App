import 'package:acc/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  const CustomeText(
      {Key? key,
      required this.text,
      this.color = blackColor,
      this.fontSize = 15,
      this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: 'Tajawal'),
    );
  }
}
