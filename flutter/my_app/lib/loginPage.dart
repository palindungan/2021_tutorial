import 'package:flutter/material.dart'; // package dasar yg dibutuhkan untuk mengeksekusi program

// widget yg tidak memiliki state, tidak berubah dengan interaksi program
class LoginPage extends StatelessWidget {
  // This widget is the root of your application.
  // membangun widget (widget Tree)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Body());
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name;
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
