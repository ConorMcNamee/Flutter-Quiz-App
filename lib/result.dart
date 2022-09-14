import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 5) {
      resultText = "You are bad";
    } else if (resultScore <= 10) {
      resultText = "You have good taste";
    } else {
      resultText = "You are the best";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          resultScore.toString(),
        ),
        FlatButton(
          onPressed:resetHandler,
          child: Text("Reset Button")
        )
      ],
    ));
  }
}
