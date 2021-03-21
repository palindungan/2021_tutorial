import 'package:basic_app/src/tutorial/TutorialContainer.dart';
import 'package:basic_app/src/tutorial/TutorialHeroAndClipRRect.dart';
import 'package:basic_app/src/tutorial/TutorialText.dart';
import 'package:flutter/material.dart';

class Tutorial21Days extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter 21 days series'),
      ),
      body: TutorialText(),
    );
  }
}
