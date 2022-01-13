import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/quiz.dart';

import 'answer.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);
final int totalScore;
final Function restartQuiz;

Result(this.totalScore, this.restartQuiz);

String get scorePhrase{
  String result;
  if(totalScore<5){
    result="You have tried";
  }
  else if(totalScore<10){
    result="Yes yes almost there";
  }
  else{
    result="Welldone Sir/Madam";
  }
  return result;
}
@override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [

          Text("$scorePhrase, score is $totalScore"),
          SizedBox(height: 16),
          TextButton(onPressed: (){
            restartQuiz();
          }, child: Text('Restart Quiz'))
        ],

      ),
    );
  }
}
