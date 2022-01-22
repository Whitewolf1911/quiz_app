// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What is your favorite color ? ',
      'answers': ['Red', 'Blue', 'Green', 'Black']
    },
    {
      'questionText': 'What is your favorite animal ? ',
      'answers': ['Goat', 'Cat', 'Dog', 'Bird']
    },
    {
      'questionText': 'What is your favorite food ? ',
      'answers': ['Rice', 'Vegetables', 'Pizza', 'Burger']
    },
  ];

  int _questionIndex = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    });
  }
  void _answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("question index =" + _questionIndex.toString());
  }

  @override //decorator
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          backgroundColor: Colors.green,
        ),
        body: _questionIndex < _questions.length
            // ? : is  if else statements
            ? Quiz(
                answerFunction: _answerChosen,
                theQuestions: _questions,
                questionIndex: _questionIndex)
            : Result(_resetQuiz)
      ),
    );
  }
}
