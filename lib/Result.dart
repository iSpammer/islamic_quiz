import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function function;
  Result({@required this.score, @required this.function});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            "Your Score is $score!",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: function,
          textColor: Colors.blue,
          child: Text("Restart Quiz!"),
        )
      ],
    );
  }
}
