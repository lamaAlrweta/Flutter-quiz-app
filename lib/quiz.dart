import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int qIndex;
  final Function answerQuestions;

  const Quiz(
      {@required this.question,
      @required this.answerQuestions,
      @required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Q(question[qIndex]['questionText']),
        //RaisedButton is button with background color
        ...(question[qIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => answerQuestions(answer['score']), answer['Text']);
        }).toList()
      ],
    );
  }
}
