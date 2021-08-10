import 'package:flutter/material.dart';
import 'showresult.dart';

class Result extends StatelessWidget {
  final List<Map<String, String>> results;
  final int randomResult;
  const Result({required this.results, required this.randomResult});

  @override
  Widget build(BuildContext context) {
    return Center(
        //else statement
        child: Column(children: [
      ShowResult(results[randomResult]['Title'].toString()),
      ShowResult(results[randomResult]['detail'].toString())
    ]));
  }
}
