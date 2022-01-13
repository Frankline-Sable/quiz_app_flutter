import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(title: 'Quiz App', home: QuizApp()));
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
        {'answer':'red','score':4},
        {'answer':'blue','score':7},
        {'answer':'green','score':2}
      ]
    },
    {
      "question": 'Which is my preferred food?',
      'answers': [
        {'answer':'samaki','score':4},
        {'answer':'chapo','score':8},
        {'answer':'rice','score':2}
      ]
    },
    {
      "question": 'My long term goal is?',
      'answers': [
        {'answer':'family','score':5},
        {'answer':'money','score':2},
        {'answer':'fame','score':8}
      ]
    }
  ];
  int _questionIndex = 0;
  int _totalScore=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Quiz App")),
      body: Center(
          child: _questionIndex<_questions.length?
          Column(
            children: [
              SizedBox(height: 16),
              Text(
                _questions[_questionIndex]['question'] as String,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 16),
              ...(_questions[_questionIndex]['answers'] as  List<Map<String, Object>>).map((answer){

                return Column(
                  children: [
                    ElevatedButton(
                        onPressed: () => {_answerQuestion((answer['answer'] as String),answer['score'] as int)},
                        child: Text(answer['answer'] as String)),
                    SizedBox(height: 16),
                  ],
                );
              }).toList()
            ],
          ):
      Container(
        height: 200,
        child: Column(
            children: [
              Text("You have run out of questions, score is $_totalScore"),
              SizedBox(height: 16),
              TextButton(onPressed: _restartQuiz, child: Text('Restart Quiz'))
            ],

        ),
      )),
    );
  }

  void _answerQuestion(String answer, int score) {
    setState(() {
      _questionIndex++;
      _totalScore=0;
    });
    _totalScore+=score;
    print("Answer $answer score $score total = $_totalScore");
  }
  void _restartQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }
}
