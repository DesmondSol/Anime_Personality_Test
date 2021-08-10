import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String _resultText;
  Result(this._resultText);
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
