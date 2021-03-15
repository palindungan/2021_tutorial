import 'package:flutter/material.dart'; // package dasar yg dibutuhkan untuk mengeksekusi program

// entry point (dieksekusi ketika program pertama kali berjalan)
void main() {
  runApp(MyApp());
}

class Post {
  // class
  Post(this.body, this.author); // constructor
  String body, author;

  bool userLiked = false;
  int likes = 0;

  void likePost() {
    this.userLiked = true;
    if (this.userLiked) {
      this.likes = this.likes + 1;
    } else {
      this.likes = this.likes - 1;
    }
  }
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

// class for handle constructor and callback
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// class for handle state + rendering widget
class _MyHomePageState extends State<MyHomePage> {
  // Start of MyHomePage Logic Here
  String text = "";

  void changeText(String text) {
    this.setState(() {
      // reload widget
      this.text = text;
    });
  }

  // End of MyHomePage Logic Here

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

// class for handle constructor and callback
class TextInputWidget extends StatefulWidget {
  TextInputWidget(this.callback); // constructor
  final Function(String) callback; // deklarasi parameter callback (string)

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

// class for handle state + rendering widget
class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController(); // controller for this widget

  // dispose method use to release the memory allocated to variables when state object is removed.
  // method called automatically from stateful if not defined.
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void onPressSend() {
    widget.callback(controller
        .text); // memanggil constraktor TextInputWidget dengan parameter text
    controller.clear(); // menghapus TextInputWidget value
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
