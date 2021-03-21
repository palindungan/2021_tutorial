import 'package:flutter/material.dart';

void onChangeView(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void onReplaceView(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => widget));
}

void onBackView(BuildContext context) {
  Navigator.pop(context);
}
