import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/base_url.dart';
import 'package:food_app_course/scr/helpers/style.dart';
import 'package:food_app_course/scr/models/product.dart';
import 'package:food_app_course/scr/widgets/custom_text.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product = Product(
      name: "Cereals 1",
      image: "3.png",
      price: 15.99,
      rating: 3.2,
      vendor: "Good Food 1",
      whishList: true,
      detail:
          "1 daskdas das das das dasdqowud ebe 12eb12uebdqsbdqwdquwhduqiwdqwbd qw qwehhqwu qwhe");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: IconThemeData(color: black),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: "Shopping Bag",
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    BaseUrl().imageAssetsUrl + "shopping-bag.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Positioned(
                  right: 7,
                  bottom: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: grey[400],
                              offset: Offset(2, 3),
                              blurRadius: 3)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                      child: CustomText(
                        text: "2",
                        color: red,
                        size: 16,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(color: red[50], offset: Offset(3, 5), blurRadius: 30)
              ]),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    BaseUrl().imageAssetsUrl + product.image,
                    height: 120,
                    width: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: product.name + "\n",
                            style: TextStyle(color: black, fontSize: 20)),
                        TextSpan(
                            text: "\$" + product.price.toString() + "\n",
                            style: TextStyle(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold))
                      ])),
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(icon: Icon(Icons.delete), onPressed: null)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
