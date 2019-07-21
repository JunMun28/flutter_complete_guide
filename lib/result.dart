import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;

  Result(this.finalScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if (finalScore < 10) {
      resultText = '$finalScore < 10, you are awesome!';
    } else if (finalScore < 15) {
      resultText = "$finalScore <15, you are good!";
    } else {
      resultText = 'Score is $finalScore, you are bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Reset the quiz',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
