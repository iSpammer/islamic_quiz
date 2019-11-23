import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Answer extends StatelessWidget {
  final Function fn;
  final String answerText;
  final int answerScore;

  Answer({@required this.fn, @required this.answerText, @required this.answerScore});

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
        onPressed: (){
          fn();
          if(answerScore == 1){
            Fluttertoast.showToast(
                msg: "اجابه صحيحه",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }
          else{
            Fluttertoast.showToast(
                msg: "اجابه خاطئه",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }

        },
      ),
    );
  }
}
