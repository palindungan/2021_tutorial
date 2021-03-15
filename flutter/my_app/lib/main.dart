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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  void changeText(String text) {
    this.setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Column(children: <Widget>[
        TextInputWidget(this.changeText),
        Text(this.text)
      ]),
    );
  }
}

// class for handle constructor
class TextInputWidget extends StatefulWidget {
  final Function(String) callback;

  TextInputWidget(this.callback);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

// class for handle state + rendering
class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void onPressSend() {
    widget.callback(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: "Type a Message",
          suffixIcon: IconButton(
            icon: Icon(Icons.send),
            onPressed: this.onPressSend,
            splashColor: Colors.orange,
            tooltip: "Here a message",
          )),
    );
  }
}
