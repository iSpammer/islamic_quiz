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
      _questionIndex = 0;
      _totalScore = 0;
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      //map zy json
      {
        'questionText': 'متي تاسس المسجد؟',
        'answers': [
          {'text': '٦٣٦ هجريا', 'score': 1},
          {'text': '٧٤٦ هجريا', 'score': 0},
          {'text': '٨٣٥ هجريا', 'score': 0},
        ],
      },
      {
        'questionText': 'اين يقع المسجد',
        'answers': [
          {'text': 'القاهره', 'score': 1},
          {'text': 'الاسكندريه', 'score': 0},
          {'text': 'دمياط', 'score': 0},
        ],
      },
      {
        'questionText': 'كم عدد المدارس بالمسجد؟',
        'answers': [
          {'text': '٣', 'score': 0},
          {'text': '٤', 'score': 1},
          {'text': '٥', 'score': 0},
        ],
      },
      {
        'questionText': 'كم مناره توجد بالمسجد؟',
        'answers': [
          {'text': '٣', 'score': 0},
          {'text': '٤', 'score': 0},
          {'text': '٢', 'score': 1},
        ],
      },
      {
        'questionText': 'ما هيا اكبر مدرسه بالمسجد؟',
        'answers': [
          {'text': 'الحنفيه', 'score': 1},
          {'text': 'الحنبيله', 'score': 0},
          {'text': 'المالكيه', 'score': 0},
        ],
      },
    ];
    final _questions2 = const[
      {
        'questionText': 'متي تاسس المسجد؟',
        'answers': [
          {'text': '٢٦٣ هجريا', 'score': 1},
          {'text': '٩١٢ هجريا', 'score': 0},
          {'text': '٧٤٣ هجريا', 'score': 0},
        ],
      },
      {
        'questionText': 'اين يقع المسجد',
        'answers': [
          {'text': 'الاسكندريه', 'score': 0},
          {'text': 'دمياط', 'score': 0},
          {'text': 'القاهره', 'score': 1},

        ],
      },
      {
        'questionText': 'كم عدد المداخل توجد بالمسجد؟',
        'answers': [
          {'text': '٤٥', 'score': 0},
          {'text': '١٩', 'score': 1},
          {'text': '٥٠', 'score': 0},
        ],
      },
      {
        'questionText': 'كم عدد الشبابيك في المسجد؟',
        'answers': [
          {'text': '٢٠٠', 'score': 0},
          {'text': '٢٥٢', 'score': 0},
          {'text': '١٢٨', 'score': 1},
        ],
      },
      {
        'questionText': 'كم عدد الاعمده في المسجد؟',
        'answers': [
          {'text': '٥٢٥', 'score': 0},
          {'text': '٣٠٠', 'score': 1},
          {'text': '٦٥٢', 'score': 0},
        ],
      },
      {
        'questionText': 'ما شكل منفذه المسجد؟',
        'answers': [
          {'text': 'حلزونيه', 'score': 1},
          {'text': 'مربعه', 'score': 0},
          {'text': 'مثلث', 'score': 0},
        ],
      },
      {
        'questionText': 'علي اي عمله يوجد شكل المسجد؟',
        'answers': [
          {'text': '٥ جنيهات', 'score': 1},
          {'text': '١٠ جنيهات', 'score': 0},
          {'text': '٥٠ جنيه', 'score': 0},
          {'text': '١٠٠ جنيه', 'score': 0},
          {'text': '٢٠٠ جنيه', 'score': 0},
        ],
      },
    ];

    void _answerQuestion(int score) {
      _totalScore += score;
      // leeh msh private ?
      setState(() {
        if(_selectedIndex == 0){
          if (_questionIndex < _questions.length) _questionIndex++;
        }
        else{
          if(_selectedIndex == 1){
            if (_questionIndex < _questions2.length) _questionIndex++;
          }
        }

      });
      print("Answer chosen!");
    }

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }
    int _getMaxQuestionsNumber(){
      if(_selectedIndex == 0){
        return _questions.length;
      }
      else
        return _questions2.length;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(_selectedIndex == 0? "مسجد السلطان حسن" : "مسجد احمد ابن طالون"),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("مسجد السلطان حسن"),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("مسجد احمد ابن طالون"),
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        body: _questionIndex < _getMaxQuestionsNumber()
            ? Quiz(
                selected: _selectedIndex,
                questions: _selectedIndex == 0 ? _questions: _questions2,
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
