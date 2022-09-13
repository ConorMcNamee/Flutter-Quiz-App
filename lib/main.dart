import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print("Answer Chosen");
  }

  var questions = [
    'What\'s your favourite color',
    'What\'s your favourite animal',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: Column(
            children: <Widget>[
              Text(questions.elementAt(0),),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text("Answer 1"),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Answer 2"),
              )
            ],
          )),
    );
  }
}
