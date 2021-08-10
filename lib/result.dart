import 'package:flutter/material.dart';
import 'showresult.dart';

class Result extends StatelessWidget {
  final List<Map<String, String>> results;
  final int totalScore;
  final VoidCallback resetTest;
  const Result(
      {required this.results,
      required this.totalScore,
      required this.resetTest});

  int indexAns() {
    if (totalScore < 19) {
      return 0;
    } else if (totalScore < 25) {
      return 1;
    } else if (totalScore < 31) {
      return 2;
    } else if (totalScore < 37) {
      return 3;
    } else if (totalScore < 43) {
      return 4;
    } else if (totalScore < 49) {
      return 5;
    } else {
      return 6;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        //else statement
        child: Column(children: [
      ShowResult(results[indexAns()]['Title'].toString()),
      ShowResult(results[indexAns()]['detail'].toString()),
      TextButton(onPressed: resetTest, child: Text('Restart Test'))
    ]));
  }
}
