import 'dart:math';

import 'package:demo_flutter/answer.dart';
import 'package:demo_flutter/quiz.dart';
import 'package:demo_flutter/result.dart';
import 'package:demo_flutter/showresult.dart';
import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  var _totalScore = 0;
  Random ran = new Random();

  final _questions = const [
    {
      //maps identifier inside a list
      'questionText': 'which anime do you prefer',
      'answerText': [
        {'text': 'Naruto', 'score': 4},
        {'text': 'One Punch Man', 'score': 2},
        {'text': 'my hero acadamea', 'score': 3},
        {'text': 'one piece', 'score': 4},
        {'text': 'death note', 'score': 1},
        {'text': 'Attack on titan', 'score': 6}
      ]
    },
    {
      'questionText': 'which one do you think is the worst',
      'answerText': [
        {'text': 'agamme ga kill', 'score': 6},
        {'text': 'nanatsu no taizai', 'score': 4},
        {'text': 'mob psycho', 'score': 4},
        {'text': 'fairy tale', 'score': 3},
        {'text': 'bleach', 'score': 4},
        {'text': 'tokyo ghoul', 'score': 3},
        {'text': 'naruto', 'score': 2},
      ],
    },
    {
      'questionText': 'how much animes did you see till today',
      'answerText': [
        {'text': 'less than 10', 'score': 2},
        {'text': 'less than 30', 'score': 3},
        {'text': 'less than 70', 'score': 4},
        {'text': 'less than 100', 'score': 6},
        {'text': 'more than 100', 'score': 7},
      ]
    },
    {
      'questionText': 'how much hours did you spent enjoying them',
      'answerText': [
        {'text': 'less than week = 168 hrs', 'score': 2},
        {'text': 'less than month =730.001 hrs', 'score': 3},
        {'text': 'less than 3 months =2190 hrs', 'score': 4},
        {'text': 'less than 8 months =5840.01hrs', 'score': 6},
        {'text': 'more than 8 months', 'score': 7}
      ]
    },
    {
      'questionText': 'do you regret being a fan',
      'answerText': [
        {'text': 'nop never', 'score': 4},
        {'text': 'i really do', 'score': 0},
        {'text': 'maybe', 'score': 3},
        {'text': 'i dunno ...', 'score': 2},
      ],
    },
    {
      'questionText': 'do you read manga',
      'answerText': [
        {'text': 'yes', 'score': 3},
        {'text': 'nop', 'score': 0},
      ],
    },
    {
      'questionText': 'which genere interests you',
      'answerText': [
        {'text': 'Kodomo Manga: Comics for little kids', 'score': 0},
        {'text': 'Shōnen Manga: Comics for young teenage boys', 'score': 2},
        {'text': 'Shōjo Manga: Comics for young teenage girls', 'score': 2},
        {'text': 'Seinen Manga: Comics for young adult males', 'score': 3},
        {'text': 'Seijin Manga: Adult comics for males', 'score': 3},
        {
          'text': 'Redisu (Lady’s) Manga: Comics for young adult females',
          'score': 2
        },
        {
          'text':
              'Dōjinshi Manga: Comic publication that’s written by and for amateurs',
          'score': 7
        },
        {
          'text':
              'Yonkoma Manga: Four-panel comics (usually published in newspapers)',
          'score': 4
        },
        {
          'text':
              'Gekiga Manga: Comics focusing on serious topics geared toward mature audiences',
          'score': 7
        },
      ]
    },
    {
      'questionText': 'how much hours do you think you spent reading them',
      'answerText': [
        {'text': 'less than week = 168 hrs', 'score': 1},
        {'text': 'less than month =730.001 hrs', 'score': 3},
        {'text': 'less than 3 months =2190 hrs', 'score': 4},
        {'text': 'less than 8 months =5840.01hrs', 'score': 6},
        {'text': 'more than 8 months', 'score': 7},
      ]
    },
    {
      'questionText': 'do you like reading web novels',
      'answerText': [
        {'text': 'yes', 'score': 4},
        {'text': 'nop', 'score': 0},
      ],
    },
    {
      'questionText': 'if you do how much did u read',
      'answerText': [
        {'text': 'less than 10', 'score': 1},
        {'text': 'less than 30', 'score': 2},
        {'text': 'less than 70', 'score': 3},
        {'text': 'less than 100', 'score': 4},
        {'text': 'more than 100', 'score': 7},
      ]
    },
    {
      'questionText': 'which genere interests you',
      'answerText': [
        {'text': 'Fantasy', 'score': 3},
        {'text': 'Sci-Fi', 'score': 3},
        {'text': 'Mystery', 'score': 2},
        {'text': 'Thriller', 'score': 2},
        {'text': 'Romance', 'score': 1},
        {'text': 'Westerns', 'score': 2},
        {'text': 'Dystopian', 'score': 2},
        {'text': 'Contemporary', 'score': 2},
      ]
    },
  ];
  final _results = [
    {
      //13+5
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
      //61
      'Title': 'Bandwagon',
      'detail':
          ' anime fans who jump on the bandwagon as they see it rising to popularity.'
    }
  ];
  void _questionanswered(String score1) {
    var score = int.parse(score1);
    _totalScore += score;
    setState(() {
      _qIndex++;
    });
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('anime personality check'),
          ),
          body: _qIndex < _questions.length //if statement
              ? Quiz(
                  questions: _questions,
                  questionanswered: _questionanswered,
                  qIndex: _qIndex)
              : Result(results: _results, totalScore: _totalScore)),
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey))),
    );
  }
}
//flutter run -d chrome --web-renderer html   use this to execute
//_appname this is now a private variable