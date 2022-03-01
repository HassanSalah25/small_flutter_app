import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function selectHandler;
  final score;
  Result(this.score, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Your Score is $score',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              selectHandler();
            },
            child: Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
