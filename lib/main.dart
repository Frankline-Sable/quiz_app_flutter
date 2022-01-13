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
      body: Column(
        children: [
          Text(
              "This is a dummy question?"),
          ElevatedButton(
              onPressed: null,
              child: Text(
                'Answer 1'
              )),
          ElevatedButton(
              onPressed: null,
              child: Text(
                  'Answer 1'
              )),
          ElevatedButton(
              onPressed: null,
              child: Text(
                  'Answer 1'
              )),
        ],
      ),
    );
  }
}
