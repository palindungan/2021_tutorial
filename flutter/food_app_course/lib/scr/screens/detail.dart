import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/style.dart';
import 'package:food_app_course/scr/models/product.dart';
import 'package:food_app_course/scr/widgets/custom_text.dart';

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
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            CustomText(text: widget.product.name)
          ],
        ),
      ),
    );
  }
}
