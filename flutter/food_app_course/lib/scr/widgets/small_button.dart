import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/style.dart';

class SmallButton extends StatelessWidget {
  SmallButton(this.icon);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:
            BoxDecoration(color: red, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            icon,
            size: 16,
            color: white,
          ),
        ),
      ),
    );
  }
}
