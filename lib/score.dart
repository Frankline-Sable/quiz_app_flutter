import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/quiz.dart';

class Score extends StatelessWidget {
  final int score;


  Score(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Text(
          "Score gained $score"
      ),
    );
  }
}
