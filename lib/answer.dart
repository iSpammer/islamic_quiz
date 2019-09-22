import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function fn;
  final String answerText;

  Answer({@required this.fn, @required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(
          answerText,
//          style: TextStyle( //tary2a tnya le lon el abyad text
//            color: Colors.white,
//          ),
        ),
        onPressed: fn,
      ),
    );
  }
}
