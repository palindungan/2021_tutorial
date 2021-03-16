import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_course/scr/common.dart';
import 'package:food_app_course/scr/widgets/categories.dart';
import 'package:food_app_course/scr/widgets/custom_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                      text: "What would you like to eat?",
                      size: 18,
                    )),
                Stack(
                  children: [
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 13,
                      right: 15,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: grey[300], offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Find Food and Restaurant",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories()
          ],
        ),
      ),
    );
  }
}
