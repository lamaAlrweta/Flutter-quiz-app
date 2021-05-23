import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restHandalr;
  Result(this.resultScore, this.restHandalr);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You\'re awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'Not bad...but try again';
    } else {
      resultText = 'Try again';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.black,
            onPressed: restHandalr,
          )
        ],
      ),
    );
  }
}
