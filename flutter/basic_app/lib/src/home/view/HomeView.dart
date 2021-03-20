import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:basic_app/util/layout/CustomIcon.dart';
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
        leading: Text('leading1'),
        title: Text('Flutter App'),
        actions: [
          Icon(
            Icons.search,
            color: CustomColor.grey,
          ),
          Icon(
            Icons.add_to_home_screen,
          ),
        ],
        elevation: 0,
        backgroundColor: CustomColor.orangeAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: Row(
                    children: [
                      FlutterLogo(),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  color: CustomColor.grey,
                  width: 300,
                  height: 100,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  child: Text(
                    'learning flutter',
                    style: TextStyle(
                      color: CustomText.textLblColor,
                      fontSize: CustomText.textLblSize,
                      fontWeight: CustomText.textLblWeight,
                      letterSpacing: CustomText.textlblLetterSpacing,
                    ),
                  ),
                  color: CustomColor.blue,
                  width: 300,
                  height: 100,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(bottom: 10),
                ),
              ],
            ),
            height: 200,
            width: 500,
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.ac_unit,
                  size: CustomIcon.icon1Size,
                ),
                Text(
                  'text here',
                  style: TextStyle(
                    color: CustomText.textLblColor,
                    fontSize: CustomText.textLblSize,
                    fontWeight: CustomText.textLblWeight,
                    letterSpacing: CustomText.textlblLetterSpacing,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            color: CustomColor.greenAccent,
            width: 300,
            height: 100,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(bottom: 10),
          ),
          Container(
            child: Text(
              'learning flutter',
              style: TextStyle(
                color: CustomText.textLblColor,
                fontSize: CustomText.textLblSize,
                fontWeight: CustomText.textLblWeight,
                letterSpacing: CustomText.textlblLetterSpacing,
              ),
            ),
            color: CustomColor.greenAccent,
            width: 300,
            height: 100,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(bottom: 10),
          ),
          Container(
            child: Text(
              'learning flutter',
              style: TextStyle(
                color: CustomText.textLblColor,
                fontSize: CustomText.textLblSize,
                fontWeight: CustomText.textLblWeight,
                letterSpacing: CustomText.textlblLetterSpacing,
              ),
            ),
            color: CustomColor.greenAccent,
            width: 300,
            height: 100,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(bottom: 10),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColor.orange,
        elevation: 5,
      ),
    );
  }
}
