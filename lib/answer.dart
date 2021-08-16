import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      SHandler; //this is the new pointer accepting format because of null safety issues with "void function" pointer call back method
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
