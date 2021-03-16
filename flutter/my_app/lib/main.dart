import 'package:flutter/material.dart'; // package dasar yg dibutuhkan untuk mengeksekusi program
import 'myHomePage.dart';

// entry point (dieksekusi ketika program pertama kali berjalan)
void main() {
  runApp(MyApp());
}

// widget yg tidak memiliki state, tidak berubah dengan interaksi program
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // membangun widget (widget Tree)
  @override
  Widget build(BuildContext context) {
    // setup aplikasi
    return MaterialApp(
      title: 'Tims App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // warna utama
      ),
      home: MyHomePage(),
    );
  }
}
