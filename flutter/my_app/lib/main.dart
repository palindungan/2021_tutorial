import 'package:flutter/material.dart'; // package dasar yg dibutuhkan untuk mengeksekusi program

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: TextInputWidget(),
    );
  }
}

// class for handle constructor
class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

// class for handle state + rendering
class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  void changeText(text){
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: this.controller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.message), labelText: "Type a Message"),
        onChanged: (text) => this.changeText(text),
        ),
        Text(this.text)
      ],
    );
  }
}
