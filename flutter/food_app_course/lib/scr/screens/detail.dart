import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/base_url.dart';
import 'package:food_app_course/scr/helpers/style.dart';
import 'package:food_app_course/scr/models/product.dart';

class Detail extends StatefulWidget {
  final Product product;

  const Detail({Key key, @required this.product}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Carousel(
                images: [
                  AssetImage(BaseUrl().imageAssetsUrl + widget.product.image),
                  AssetImage(BaseUrl().imageAssetsUrl + widget.product.image),
                  AssetImage(BaseUrl().imageAssetsUrl + widget.product.image),
                ],
                dotBgColor: white,
                dotColor: grey,
                dotIncreasedColor: red,
                dotIncreaseSize: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
