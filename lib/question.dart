import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      _questionText; //el variable da 3omro mahyt8yr fa a3mlo final a7sn 3shan el prefromance 3shan da stateless
//  Question({this.questionText}); //name Argument
  Question(this._questionText); //zy java argument
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
//      width: double.infinity,
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
