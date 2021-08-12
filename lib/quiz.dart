import 'dart:html'; //error happening here

import 'package:demo_flutter/question.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIndex;
  final FunctionStringCallback questionanswered;
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
