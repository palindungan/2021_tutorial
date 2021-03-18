import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/common.dart';
import 'package:food_app_course/scr/models/product.dart';

class Detail extends StatefulWidget {
  final Product product;

  const Detail({Key key,@required this.product}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
