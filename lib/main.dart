import 'package:flutter/material.dart';
import 'package:flutter_first/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'Text': 'black', 'score': 10},
        {'Text': 'white', 'score': 6},
        {'Text': 'Reed', 'score': 3},
        {'Text': 'Green', 'score': 5},
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'Text': 'Cat', 'score': 3},
        {'Text': 'Rabbit', 'score': 10},
        {'Text': 'Lion', 'score': 5},
        {'Text': 'Dog', 'score': 6},
      ],
    },
    {
      'questionText': 'who\'s your favorite instrucator?',
      'answers': [
        {'Text': 'Max', 'score': 5},
        {'Text': 'Lama', 'score': 10},
        {'Text': 'sara', 'score': 8},
        {'Text': 'afaf', 'score': 9},
      ],
    },
  ];

  var _qIndex = 0;
  var _totalScore = 0;

  void _restQuiz(){
    setState(() {
          _qIndex = 0;
   _totalScore = 0;
  
        });

 
  }
  void _answers(int score) {
    _totalScore += score;
    setState(() {
      _qIndex = _qIndex + 1;
    });
    print(_qIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          //Iteams above each other, Row: itemas next to each other
          // body:Column(children:<Widget>[] it's bascily will holds list of wigets
          body: _qIndex < _question.length
              ? Quiz(
                  answerQuestions: _answers,
                  qIndex: _qIndex,
                  question: _question,
                )
              : Result(_totalScore,_restQuiz)),
    );
  }
}
