import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:flutter/material.dart';

class TutorialText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Just An Amazing Text',
        style: TextStyle(
          fontSize: 48,
          height: 2,

          fontWeight: FontWeight.w600,
          letterSpacing: 2,
          color: CustomColor.blue,
          backgroundColor: CustomColor.orange,
          shadows: [
            Shadow(
              color: CustomColor.black,
              blurRadius: 20,
              offset: Offset(0, 30),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
