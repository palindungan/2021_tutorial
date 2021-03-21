import 'package:basic_app/util/GeneralMethod.dart';
import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:basic_app/util/layout/CustomText.dart';
import 'package:flutter/material.dart';

class TutorialHeroAndClipRRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'A Widget Can Be Anything Like Image, Container, ETC',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Hero(
            tag: 'tag',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: CustomColor.blue,
                  gradient: LinearGradient(
                    colors: [
                      CustomColor.blue,
                      CustomColor.grey,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        MaterialButton(
          onPressed: () {
            onChangeView(context, SecondScreen());
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(
              'Second Screen',
              style: TextStyle(
                fontSize: 20,
                color: CustomText.textButtonColor,
              ),
            ),
          ),
          color: CustomColor.blue,
        ),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'tag',
            child: Container(
              height: 500,
              color: CustomColor.blue,
            ),
          ),
        ],
      ),
    );
  }
}
