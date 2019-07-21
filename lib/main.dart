import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _finalScore = 0;

  void _printSomething(int score) {
    _finalScore += score;

    setState(() {
      _index += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _finalScore = 0;
      _index = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favourite colors?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 7},
        {'text': 'green', 'score': 5},
        {'text': 'yellow', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'cat', 'score': 10},
        {'text': 'dog', 'score': 7},
        {'text': 'lion', 'score': 5},
        {'text': 'elephant', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite fruit?',
      'answers': [
        {'text': 'banana', 'score': 10},
        {'text': 'apple', 'score': 5},
        {'text': 'grape', 'score': 1}
      ]
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar message'),
        ),
        body: _index < _questions.length
            ? Quiz(
                printSomething: _printSomething,
                index: _index,
                questions: _questions,
              )
            : Result(_finalScore, _resetQuiz),
      ),
    );
  }
}
