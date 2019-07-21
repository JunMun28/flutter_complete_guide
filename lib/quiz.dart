import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function printSomething;
  final List<Map<String, Object>> questions;
  final int index;

  Quiz({
    @required this.printSomething,
    @required this.questions,
    @required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[index]['questionText']),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => printSomething(answer['score']),
            answer['text'],
          );
        }).toList()
      ],
    );
  }
}
