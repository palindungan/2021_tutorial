import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/common.dart';

class CustomText extends StatelessWidget {
  CustomText({@required this.text, this.size, this.color, this.weight});

  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
