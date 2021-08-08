import 'package:flutter/material.dart';

class question extends StatelessWidget {
  String questionText;
  question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
