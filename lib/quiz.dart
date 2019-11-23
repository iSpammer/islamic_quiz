import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_2/question.dart';

import 'Hasan.dart';
import 'IbnTawlon.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final int selected;
  Quiz(
      {@required this.selected,
        @required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
//        Container(
//          margin: EdgeInsets.all(10),
//          child: Center(
//            child: _widgetOptions.elementAt(_selectedIndex),
//          ),
//        ),
        Center(child: Image.asset(selected == 0? "image/hasanmosque.jpg" : "image/tulunmosque.jpg", height: 175.0)),
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
            answerScore: answer['score'],
            answerText: answer['text'],
            fn: () => answerQuestion(answer['score']),
          );
        }).toList(),
        FlatButton(
          onPressed: (){
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => selected == 0 ? Hasan() : IbnTawlon()),
            );
          },
          textColor: Colors.blue[300],
          child: Text("History!"),
        )
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
