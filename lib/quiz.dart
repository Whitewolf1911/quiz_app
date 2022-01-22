import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerFunction;
  int questionIndex;
  var theQuestions;

  Quiz(
      {@required this.answerFunction,
      @required this.theQuestions,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(theQuestions[questionIndex]['questionText'] as String),
        ...(theQuestions[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(answerFunction, answer);
        }).toList()
      ],
    );
  }
}
