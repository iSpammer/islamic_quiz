import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz_app_2/quiz.dart';

import './question.dart';
import './answer.dart';
import 'Result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: meaw',
      style: optionStyle,
    ),
    Text(
      'Index 2: riibiit',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      //map zy json
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 6},
          {'text': 'Blue', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Catto', 'score': 3},
          {'text': 'Doggo', 'score': 11},
          {'text': 'Froggo', 'score': 0},
          {'text': 'Reem', 'score': 5}
        ],
      },
      {
        'questionText': 'Who\'s your favorite person?',
        'answers': [
          {'text': 'Ossama', 'score': 0},
          {'text': 'Reem', 'score': 100},
          {'text': 'Noha', 'score': 1},
          {'text': 'Abdo', 'score': 50}
        ],
      },
    ];

    void _answerQuestion(int score) {
      _totalScore += score;
      // leeh msh private ?
      setState(() {
        if (_questionIndex < _questions.length) _questionIndex++;
      });
      print("Answer chosen!");
    }

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("hiii"),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              title: Text("Log"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(
                score: _totalScore,
                function: _resetQuiz,
              ),
      ),
    );
  }
}
