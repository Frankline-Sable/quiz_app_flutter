import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/quiz.dart';

class Answer extends StatelessWidget {
final Function answerQuestion;
final Map<String,Object> answer;


Answer(this.answerQuestion, this.answer);

@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => {answerQuestion((answer['answer'] as String),answer['score'] as int)},
            child: Text(answer['answer'] as String)),
        SizedBox(height: 16),
      ],
    );
  }
}
