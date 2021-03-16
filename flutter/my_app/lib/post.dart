// model class postingan
class Post {
  // class
  Post(this.body, this.author); // constructor
  String body, author;

  bool userLiked = false;
  int likes = 0;

  void likePost() {
    this.userLiked = !this.userLiked;
    if (this.userLiked) {
      this.likes = this.likes + 1;
    } else {
      this.likes = this.likes - 1;
    }
  }
}