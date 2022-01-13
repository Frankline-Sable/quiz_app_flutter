import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/quiz.dart';
import 'package:quiz_app_flutter/result.dart';

import 'answer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Quiz App',
    home: QuizApp(),
  ));
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizAppState();
  }
}

class QuizAppState extends State {
  final List<Map<String, Object>> _questions = [
    {
      "question": 'What\'s my favourite color?',
      'answers': [
        {'answer': 'red', 'score': 4},
        {'answer': 'blue', 'score': 7},
        {'answer': 'green', 'score': 2}
      ]
    },
    {
      "question": 'Which is my preferred food?',
      'answers': [
        {'answer': 'samaki', 'score': 4},
        {'answer': 'chapo', 'score': 8},
        {'answer': 'rice', 'score': 2}
      ]
    },
    {
      "question": 'My long term goal is?',
      'answers': [
        {'answer': 'family', 'score': 5},
        {'answer': 'money', 'score': 2},
        {'answer': 'fame', 'score': 8}
      ]
    }
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  int _gainedScore = 0;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text("Simple Quiz App")),
      body: Center(
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, _answerQuestion, _gainedScore)
              : Result(_totalScore, _restartQuiz)),
    );
  }

  void _answerQuestion(String answer, int score) {
    if(_questionIndex<1){
      if(answer=='red') {
        color=Colors.red;
      } else if(answer=='blue') {
        color=Colors.blue;
      } else{
        color=Colors.green;
      }
    }else{
      color=Colors.white;
    }

    setState(() {
      _questionIndex++;
      _totalScore += score;
      _gainedScore = score;
    });

    print("Answer $answer score $score total = $_totalScore");
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _gainedScore=0;
    });
  }
}
