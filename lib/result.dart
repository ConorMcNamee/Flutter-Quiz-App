import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Theres no more Questions",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold
        ),
    ));
  }
}
