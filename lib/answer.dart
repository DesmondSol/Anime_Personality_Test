import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final VoidCallback SHandler;
  answer(this.SHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(onPressed: SHandler, child: Text('answer 1')));
  }
}
