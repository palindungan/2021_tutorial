import 'package:flutter/material.dart'; // package dasar yg dibutuhkan untuk mengeksekusi program

void main() {
  // entry point (dieksekusi ketika program pertama kali berjalan)
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // widget yg tidak memiliki state, tidak berubah dengan interaksi program
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // membangun widget (widget Tree)
    return MaterialApp(
      // setup aplikasi
      title: 'Tims App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // warna utama
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Column(
        children: <Widget>[TestWidget(), TestWidget(), TestWidget()],
      ),
    ); // set up basic structure of page
  }
}

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello ");
  }
}
