import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback SHandler;
  final String answerText;
  Answer(this.SHandler, String this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(14, 4, 14, 4),
        child: ElevatedButton(
          onPressed: SHandler,
          child: Text(answerText),
        ));
  }
}
