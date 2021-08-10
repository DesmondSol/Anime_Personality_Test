import 'dart:math';

import 'package:demo_flutter/answer.dart';
import 'package:demo_flutter/result.dart';
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

  Random ran = new Random();

  final questions = const [
    {
      //maps identifier inside a list
      'questionText': 'which anime do you prefer',
      'answerText': [
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
        'naruto'
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
      'questionText': 'how much hours did you spent enjoying them',
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
        'Kodomo Manga: Comics for little kids',
        'Shōnen Manga: Comics for young teenage boys',
        'Shōjo Manga: Comics for young teenage girls',
        'Seinen Manga: Comics for young adult males',
        'Seijin Manga: Adult comics for males',
        'Redisu (Lady’s) Manga: Comics for young adult females',
        'Dōjinshi Manga: Comic publication that’s written by and for amateurs',
        'Yonkoma Manga: Four-panel comics (usually published in newspapers)',
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
        'Dystopian',
        'Contemporary',
      ]
    },
  ];
  final results = [
    {
      'Title': 'The Newbie',
      'detail':
          'newbies have just discovered their new found love for anime and it is likely they are only a few episodes deep in one of the very mainstream anime like Naruto, Bleach, Tokyo Ghoul etc',
    },
    {
      'Title': 'The Anime Otaku',
      'detail':
          ':extreme fans and experts of anime and interact with other fans online and in real life',
    },
    {
      'Title': 'Anime Hikikomori',
      'detail':
          'these folks don’t enjoy interacting in the real world and like to stay at home, they pass their time playing games, reading manga, light novels and watching tons of anime',
    },
    {
      'Title': 'The Weeaboo',
      'detail':
          'a person who is usually of western origin and has a seemingly unhealthy obsession with anime',
    },
    {
      'Title': 'Waifu Fans',
      'detail':
          'They are fans who get super obsessive over a certain character and develop a real crush on the characters',
    },
    {
      'Title': 'Nijikon',
      'detail':
          'fans who are no longer interested in the anime but are specific characters of anime and manga. They have a strong obsession with a character and will either have a deep yearning to ‘be’ the character or just are only interested in specific 2D characters.',
    },
    {
      'Title': 'Bandwagon',
      'detail':
          ' anime fans who jump on the bandwagon as they see it rising to popularity.'
    }
  ];
  void questionanswered() {
    setState(() {
      qIndex++;
    });
    print(qIndex);
  }

  int randomResult() {
    return ran.nextInt(7);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('anime personality check'),
          ),
          body: qIndex < questions.length //if statement
              ? Column(
                  children: [
                    question(questions[qIndex]['questionText'].toString()),
                    ...(questions[qIndex]['answerText'] as List<String>)
                        .map((answer) {
                      return Answer(questionanswered, answer);
                    }).toList()
                  ],
                )
              : Center(
                  //else statement

                  child: Column(children: [
                  Result(results[randomResult()]['Title'].toString()),
                  Result(results[randomResult()]['detail'].toString())
                ]))),
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