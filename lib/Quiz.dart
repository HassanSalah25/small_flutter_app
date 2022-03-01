import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  int _questionInd;
  final Function _answerQuestion;
  Quiz(
    @required this.questions,
    @required this._questionInd,
    @required this._answerQuestion,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[_questionInd]['questionText'] as String,
        ),
        ...(questions[_questionInd]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => _answerQuestion(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
