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
      'answers': ['red', 'blue', 'green']
    },
    {
      "question": 'Which is my preferred food?',
      'answers': ['samaki', 'rice', 'chapati']
    },
    {
      "question": 'My long term goal is?',
      'answers': ['family', 'money', 'fame']
    }
  ];
  int _questionIndex = 0;

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
              ...(_questions[_questionIndex]['answers'] as List<String>).map((answer){
                return Column(
                  children: [
                    ElevatedButton(
                        onPressed: () => {_answerQuestion(answer)},
                        child: Text(answer)),
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
              Text("You have run out of questions"),
              SizedBox(height: 16),
              TextButton(onPressed: _restartQuiz, child: Text('Restart Quiz'))
            ],

        ),
      )),
    );
  }

  void _answerQuestion(String answer) {
    setState(() {
      _questionIndex++;
    });
    print("Answer $answer");
  }
  void _restartQuiz(){
    setState(() {
      _questionIndex=0;
    });
  }
}
