import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/screen_navigation.dart';
import 'package:food_app_course/scr/helpers/style.dart';
import 'package:food_app_course/scr/helpers/base_url.dart';
import 'package:food_app_course/scr/screens/shopping_bag.dart';
import 'package:food_app_course/scr/widgets/bottom_navigation_icons.dart';
import 'package:food_app_course/scr/widgets/categories.dart';
import 'package:food_app_course/scr/widgets/custom_text.dart';
import 'package:food_app_course/scr/widgets/featured_products.dart';
import 'package:food_app_course/scr/widgets/small_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Popular",
                size: 20,
                color: grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                              Image.asset(BaseUrl().imageAssetsUrl + "7.png")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(Icons.favorite),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.star,
                                      color: yellow[900],
                                      size: 20,
                                    ),
                                  ),
                                  CustomText(text: "4.7")
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          // Box decoration takes a gradient
                          gradient: LinearGradient(
                            // Where the linear radient begins and ends
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            // Add one stop for each color. Stops should increase from
                            colors: [
                              // Colors are easy thanks to flutter class
                              black.withOpacity(0.8),
                              black.withOpacity(0.7),
                              black.withOpacity(0.6),
                              black.withOpacity(0.4),
                              black.withOpacity(0.1),
                              black.withOpacity(0.05),
                              black.withOpacity(0.025),
                            ],
                          )),
                    ),
                  )),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "nameee \n",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "avg meal price: ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300)),
                              TextSpan(
                                  text: "\$pricee \n",
                                  style: TextStyle(fontSize: 16)),
                            ], style: TextStyle(color: white)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "123 \n",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ], style: TextStyle(color: white)),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavIcon(
              image: "home.png",
              name: "Home",
            ),
            BottomNavIcon(
              image: "nearby.png",
              name: "Near By",
            ),
            BottomNavIcon(
              image: "shopping-bag.png",
              name: "Shop",
              onTap: () {
                changeScreen(context, ShoppingBag());
              },
            ),
            BottomNavIcon(
              image: "user.png",
              name: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
