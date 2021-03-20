import 'package:basic_app/src/home/view/HomeView.dart';
import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomColor.red,
      ),
      home: HomeView(
        title: "testing11",
      ),
    );
  }
}
