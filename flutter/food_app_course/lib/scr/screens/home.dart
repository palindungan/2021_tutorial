import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_course/scr/common.dart';
import 'package:food_app_course/scr/helpers/base_url.dart';
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
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Featured",
                size: 20,
                color: grey,
              ),
            ),
            Container(
              height: 240,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 240,
                        width: 200,
                        decoration: BoxDecoration(color: white, boxShadow: [
                          BoxShadow(
                              color: grey[300],
                              offset: Offset(1, 1),
                              blurRadius: 4)
                        ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              BaseUrl().imageAssetsUrl + "3.png",
                              height: 140,
                              width: 140,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomText(text: "Some Food"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: grey[300],
                                              offset: Offset(1, 1),
                                              blurRadius: 4)
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: red,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: CustomText(
                                        text: "4.7",
                                        color: grey,
                                        size: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: red,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: red,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: red,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: red,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: grey,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: CustomText(
                                    text: "\$12.99",
                                    weight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
