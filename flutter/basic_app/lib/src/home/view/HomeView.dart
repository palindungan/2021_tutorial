import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:basic_app/util/layout/CustomText.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      appBar: AppBar(
        title: Text('Flutter App'),
        backgroundColor: CustomColor.orangeAccent,
      ),
      body: Center(
          child: Text(
        'learning flutter',
        style: TextStyle(
          color: CustomText.textLblColor,
          fontSize: CustomText.textLblSize,
          fontWeight: CustomText.textLblWeight,
          letterSpacing: CustomText.textlblLetterSpacing,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColor.orange,
        elevation: 5,
      ),
    );
  }
}
