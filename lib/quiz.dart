import 'package:flutter/material.dart';
import 'package:quiz_app_2/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        Container(
//          margin: EdgeInsets.all(10),
//          child: Center(
//            child: _widgetOptions.elementAt(_selectedIndex),
//          ),
//        ),
        Question(questions[questionIndex]['questionText']),
//            Answer(
//                answerText: questions[_questionIndex]['answers'],
//                fn: answerQuestion),
//            Answer(
//                answerText: questions[_questionIndex]['answers'],
//                fn: answerQuestion),
//            Answer(
//                answerText: questions[_questionIndex]['answers'],
//                fn: answerQuestion),
        //LAST

        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answerText: answer['text'],
            fn: () => answerQuestion(answer['score']),
          );
        }).toList(),
        //el 3 no2at by5aly kol el elements yb2o children ll coloum
//            RaisedButton(
//              child: Text("Hii"),
//              onPressed: () {
//                _answerQuestion();
//              },
//            ),
//            RaisedButton(
//              child: Text("Hii"),
//              onPressed: _answerQuestion,
//            ),
//            RaisedButton(
//              child: Text("Hii"),
//              onPressed: () => print("Hiiii"), //one line function
//            ),
      ],
    );
  }
}
