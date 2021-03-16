import 'package:flutter/material.dart'; // package dasar yg dibutuhkan untuk mengeksekusi program
import 'post.dart';

// class for handle constructor and callback
class PostList extends StatefulWidget {
  PostList(this.listItems); // constructor

  final List<Post> listItems; // variable callback

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {

  // method fungsi when liked post
  void like(Function callback) {
    this.setState(() {
      callback();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.listItems.length,
      itemBuilder: (context, index) {
        var post = this.widget.listItems[index];
        return Card(
            child: Row(children: <Widget>[
              Expanded(
                  child: ListTile(
                      title: Text(post.body), subtitle: Text(post.author))),
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      post.likes.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  ),
                  IconButton(
                      icon: Icon(Icons.thumb_up),
                      onPressed: () => this.like(post.likePost),
                      color: post.userLiked ? Colors.green : Colors.black)
                ],
              )
            ]));
      },
    );
  }
}