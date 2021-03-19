import 'package:flutter/material.dart';
import 'file:///C:/xampp/htdocs/2021_tutorial/flutter/food_app_course/lib/scr/helpers/style.dart';
import 'package:food_app_course/scr/screens/home.dart';
import 'package:food_app_course/scr/screens/login.dart';

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
      home: LoginScreen(),
    );
  }
}
