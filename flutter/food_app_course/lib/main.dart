import 'package:flutter/material.dart';
import 'package:food_app_course/scr/common.dart';
import 'package:food_app_course/scr/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: red,
      ),
      home: Home(),
    );
  }
}
