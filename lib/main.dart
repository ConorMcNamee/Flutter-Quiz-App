import "package:flutter/material.dart";
import 'package:flutter_project_1/quiz.dart';
import 'package:flutter_project_1/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color',
      'answers': [
        {'text': 'Purple', 'score': 9},
        {'text': 'Black', 'score': 2},
        {'text': 'Red', 'score': 6},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'lion', 'score': 8},
        {'text': 'ant', 'score': 1}
      ]
    },
  ];

  void _answerQuestion(int score) {

    _totalScore += score;
    print(score);

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
