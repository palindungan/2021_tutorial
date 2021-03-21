import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:flutter/material.dart';

class Tutorial21Days extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter 21 days series'),
      ),
      body: Container(
        // color: CustomColor.blue,
        height: 300,
        width: 300,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: CustomColor.blue,
          gradient: LinearGradient(colors: [
            CustomColor.red,
            CustomColor.greenAccent,
          ]),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 20),
              spreadRadius: 10,
              color: CustomColor.grey,
              blurRadius: 20,
            ),
          ],
        ),
        child: Text('Mulai Belajar Container'),
      ),
    );
  }
}
