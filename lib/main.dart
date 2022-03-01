import 'package:flutter/material.dart';
import 'package:flutter_complete_gui/Result.dart';
import 'Quiz.dart';
import 'Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': "what's your favourite color?",
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'black', 'score': 20},
        {'text': 'black', 'score': 5},
      ],
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {'text': 'Lion', 'score': 1},
        {'text': 'Monkey', 'score': 2},
        {'text': 'Elephant', 'score': 7},
        {'text': 'Rabbit', 'score': 4},
      ],
    },
    {
      'questionText': "What's your favourite instructor?",
      'answers': [
        {'text': 'Hassan', 'score': 25},
        {'text': 'Hosny', 'score': 12},
        {'text': 'Hussein', 'score': 10},
        {'text': 'Hassaan', 'score': 14},
      ],
    },
  ];
  var _questionInd = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionInd = _questionInd + 1;
    });
    print(_questionInd);
  }

  void resetQuiz() {
    setState(() {
      _questionInd = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionInd < questions.length
            ? Quiz(questions, _questionInd, _answerQuestion)
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
