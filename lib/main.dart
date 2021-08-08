import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int no = 0;

  var questions = [
    'which anime do you prefer',
    'which one do you think is the worst',
    'how much animes did you see till today',
    'how mich hours did you spent enjoying them',
    'do you regret being a fan',
    'do you read manga',
    'which genere interests you',
    'how much hours do you think u spent reading them',
    'do you like reading web novels',
    'if you do how much did u read',
    'which genere interests you',
  ];

  pressedAns({int no = 1}) {
    this.no = no;
    print('$no st button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('anime personality check'),
          ),
          body: Column(
            children: [
              Text(questions.first),
              ElevatedButton(
                  onPressed: pressedAns, //standard function calling
                  child: Text('answer 1')),
              ElevatedButton(
                  onPressed: () =>
                      print("answer 2 is chosen"), //anonymous inline fuction
                  child: Text('answer 2')),
              ElevatedButton(
                  onPressed: () {
                    //anonymous anaother way of function calling
                    print('third button pressed');
                  },
                  child: Text('answer 3')),
            ],
          )),
    );
  }
}
//flutter run -d chrome --web-renderer html   use to execute
