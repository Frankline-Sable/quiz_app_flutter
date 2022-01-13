import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      title: 'Quiz App',
      home: QuizApp()
    )
  );
}
class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Simple Quiz App"
        )
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            Text(
              "This is a dummy question?",
              style: TextStyle(fontSize: 24),),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: ()=>{
                  _answerQuestion('answer 1')
                },
                child: Text(
                    'Answer 1'
                )),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: ()=>{
                  _answerQuestion('answer 2')
                },
                child: Text(
                    'Answer 2'
                )),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: ()=>{
                  _answerQuestion('answer 3')
                },
                child: Text(
                    'Answer 3'
                )),
          ],
        )
      ),
    );
  }

  void _answerQuestion(String answer){
    print("Answer $answer");
  }
}
