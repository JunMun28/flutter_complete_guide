import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  void _printSomething() {
    setState(() {
      _index += 1;
    });
    print(_index);
  }

  List questions = [
    {
      'questionText': 'What\'s your favourite colors?',
      'answers': ['red', 'blue', 'green', 'yellow']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['cat', 'dog', 'lion', 'elephant']
    },
    {
      'questionText': 'What\'s your favourite fruit?',
      'answers': ['banana', 'apple', 'grape']
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar message'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_index]['questionText']),
            ...(questions[_index]['answers'] as List<String>).map((answer) {
              return Answer(_printSomething, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
