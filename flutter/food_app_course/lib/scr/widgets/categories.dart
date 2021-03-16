import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/base_url.dart';
import 'package:food_app_course/scr/models/category.dart';

import '../common.dart';
import 'custom_text.dart';

class Categories extends StatelessWidget {
  List<Category> categoriesList = [
    Category(name: "Salad", image: "1.png"),
    Category(name: "sasa", image: "logo.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
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
                  text: categoriesList.length.toString(),
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
