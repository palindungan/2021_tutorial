import 'package:basic_app/util/layout/CustomColor.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({@required this.title});

  final String title;

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _counter = 0;
  Color _color = CustomColor.grey;
  bool isPressed = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (isPressed) {
        _color = CustomColor.red;
      } else {
        _color = CustomColor.blue;
      }
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: _color,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
