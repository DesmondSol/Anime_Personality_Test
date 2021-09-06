import 'dart:html'; //error is sometimes happening here so check this if you found a problem it but works on web

import 'package:demo_flutter/question.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIndex;
  final FunctionStringCallback
      questionanswered; //here it accepts a pointer so becareful here
  Quiz(
      {required this.questions,
      required this.questionanswered,
      required this.qIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(questions[qIndex]['questionText'].toString()),
        ...(questions[qIndex]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => questionanswered(answer['score'].toString()),
              answer['text'].toString());
        }).toList()
      ],
    );
  }
}
