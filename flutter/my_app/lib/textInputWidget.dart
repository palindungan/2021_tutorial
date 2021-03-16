import 'package:flutter/material.dart'; // package dasar yg dibutuhkan untuk mengeksekusi program

// class for handle constructor and callback
class TextInputWidget extends StatefulWidget {
  TextInputWidget(this.callback); // constructor
  final Function(String)
  callback; // deklarasi parameter callback (berupa fungsi berisi string)

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
    FocusScope.of(context).unfocus();
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