import 'package:flutter/material.dart'; // package dasar yg dibutuhkan untuk mengeksekusi program
import 'post.dart';
import 'postList.dart';
import 'textInputWidget.dart';

// class for handle constructor and callback
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// class for handle state + rendering widget
class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = []; // empty array for store data object class Post

  // fungsi untuk membuat postingan baru
  void newPost(String text) {
    // reload widget
    this.setState(() {
      posts.add(new Post(text, "author"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Column(children: <Widget>[
        Expanded(child: PostList(this.posts)),
        TextInputWidget(this.newPost)
      ]),
    );
  }
}