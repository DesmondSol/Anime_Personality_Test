import 'package:demo_flutter/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int no = 0;
  var qIndex = 0;

  void questionanswered() {
    setState(() {
      qIndex++;
    });
    print(qIndex);
  }

  // pressedAns({int no = 1}) {
  //   this.no = no;
  //   print('$no st button pressed');
  // }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        //maps identifier inside a list
        'questionText': 'which anime do you prefer',
        'answersText': [
          'Naruto',
          'One Punch Man',
          'my hero acadamea',
          'one piece',
          'death note',
          'Attack on titan',
        ]
      },
      {
        'questionText': 'which one do you think is the worst',
        'answerText': [
          'agamme ga kill',
          'nanatsu no taizai',
          'mob psycho',
          'fairy tale',
          'bleach',
          'tokyo ghoul',
        ],
      },
      {
        'questionText': 'how much animes did you see till today',
        'answerText': [
          'less than 10',
          'less than 30',
          'less than 70',
          'less than 100',
          'more than 100'
        ]
      },
      {
        'questionText': 'how mich hours did you spent enjoying them',
        'answerText': [
          'less than week = 168 hrs',
          'less than month =730.001 hrs',
          'less than 3 months =2190 hrs',
          'less than 8 months =5840.01hrs',
          'more than 8 months'
        ]
      },
      {
        'questionText': 'do you regret being a fan',
        'answerText': ['nop never', 'i really do', 'maybe', 'i dunno ...']
      },
      {
        'questionText': 'do you read manga',
        'answerText': ['yes', 'nop']
      },
      {
        'questionText': 'which genere interests you',
        'answerText': [
          'Shōnen Manga: Comics for young teenage boys',
          'Shōjo Manga: Comics for young teenage girls',
          'Seinen Manga: Comics for young adult males',
          'Seijin Manga: Adult comics for males',
          'Redisu (Lady’s) Manga: Comics for young adult females',
          'Dōjinshi Manga: Comic publication that’s written by and for amateurs',
          'Gekiga Manga: Comics focusing on serious topics geared toward mature audiences'
        ]
      },
      {
        'questionText': 'how much hours do you think u spent reading them',
        'answerText': [
          'less than week = 168 hrs',
          'less than month =730.001 hrs',
          'less than 3 months =2190 hrs',
          'less than 8 months =5840.01hrs',
          'more than 8 months'
        ]
      },
      {
        'questionText': 'do you like reading web novels',
        'answerText': ['yes', 'no']
      },
      {
        'questionText': 'if you do how much did u read',
        'answerText': [
          'less than 10',
          'less than 30',
          'less than 70',
          'less than 100',
          'more than 100'
        ]
      },
      {
        'questionText': 'which genere interests you',
        'answerText': [
          'Fantasy',
          'Sci-Fi',
          'Mystery',
          'Thriller',
          'Romance',
          'Westerns',
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('anime personality check'),
          ),
          body: Column(
            children: [
              question(questions[qIndex]['questionText']
                  .toString()), //chaNGE recorded
              answer(questionanswered),
              answer(questionanswered),
              answer(questionanswered),
              answer(questionanswered),
              answer(questionanswered),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                      onSurface: Colors.grey),
                  onPressed: () => questionanswered(),
                  child: Text('working answer'))
            ],
          )),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey))),
    );
  }
}
//flutter run -d chrome --web-renderer html   use to execute
//_appname this is now a private variable