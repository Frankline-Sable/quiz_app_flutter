import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/score.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;

  final Function questionHandler;
  final int score;


  Quiz(this.questions, this.questionIndex, this.questionHandler, this.score);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Text(
          questions[questionIndex]['question'] as String,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
        ),
        SizedBox(height: 16),
        ...(questions[questionIndex]['answers'] as  List<Map<String, Object>>).map((answer){

          return Answer(questionHandler,answer);
        }).toList(),
        SizedBox(height: 24),
        Score(score)
      ],
    );
  }
}
