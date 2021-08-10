import 'package:flutter/material.dart';

class ShowResult extends StatelessWidget {
  final String _resultText;
  ShowResult(this._resultText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          _resultText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
