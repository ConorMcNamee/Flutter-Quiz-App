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

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color',
      'answers': ['Black', 'Red', 'White']
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': ['Rabbit', 'Snake', 'Elephant']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
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
            ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex,)
            : Result(),
      ),
    );
  }
}
