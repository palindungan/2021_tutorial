import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/base_url.dart';
import 'package:food_app_course/scr/helpers/screen_navigation.dart';
import 'package:food_app_course/scr/models/product.dart';
import 'package:food_app_course/scr/screens/detail.dart';

import '../helpers/style.dart';
import 'custom_text.dart';

class Featured extends StatelessWidget {
  List<Product> productsList = [
    Product(
        name: "Cereals 1",
        image: "3.png",
        price: 15.99,
        rating: 3.2,
        vendor: "Good Food 1",
        whishList: true,
        detail:
            "1 daskdas das das das dasdqowud ebe 12eb12uebdqsbdqwdquwhduqiwdqwbd qw qwehhqwu qwhe"),
    Product(
        name: "Cereals 2",
        image: "4.png",
        price: 17.00,
        rating: 4.7,
        vendor: "Good Food 2",
        whishList: false,
        detail:
            "2 asdjas ashdashdjash qwhd shd ashd asdhkahsdhas ashd ashdasdhas a sdhasjdhashdj"),
    Product(
        name: "Cereals 3",
        image: "5.png",
        price: 7.99,
        rating: 4.2,
        vendor: "Good Food 3",
        whishList: false,
        detail: "3 jbkajsbdkjashd ashd qshd eh 1231 23h123 1h312 3h123 213j"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  changeScreen(_, Detail(product: productsList[index]));
                },
                child: Container(
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: red[50], offset: Offset(15, 5), blurRadius: 30)
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        BaseUrl().imageAssetsUrl + productsList[index].image,
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: productsList[index].name),
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
                                child: productsList[index].whishList
                                    ? Icon(
                                        Icons.favorite,
                                        color: red,
                                        size: 18,
                                      )
                                    : Icon(
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
                                  text: productsList[index].rating.toString(),
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
                              text: "\$" + productsList[index].price.toString(),
                              weight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
