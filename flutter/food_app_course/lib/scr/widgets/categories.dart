import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/base_url.dart';
import 'package:food_app_course/scr/models/category.dart';

import '../common.dart';
import 'custom_text.dart';

class Categories extends StatelessWidget {
  List<Category> categoriesList = [
    Category(name: "1", image: "1.png"),
    Category(name: "2", image: "2.png"),
    Category(name: "3", image: "3.png"),
    Category(name: "4", image: "4.png"),
    Category(name: "5", image: "5.png"),
    Category(name: "6", image: "6.png"),
    Category(name: "7", image: "7.png"),
    Category(name: "8", image: "8.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: red[50], offset: Offset(4, 6), blurRadius: 20)
                  ]),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      BaseUrl().imageAssetsUrl + categoriesList[index].image,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 14,
                  color: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
