// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   int no = 0;
//   var qIndex = 0;

//   void questionanswered() {
//     qIndex++;
//     print(qIndex);
//   }

//   pressedAns({int no = 1}) {
//     this.no = no;
//     print('$no st button pressed');
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'which anime do you prefer',
//       'which one do you think is the worst',
//       'how much animes did you see till today',
//       'how mich hours did you spent enjoying them',
//       'do you regret being a fan',
//       'do you read manga',
//       'which genere interests you',
//       'how much hours do you think u spent reading them',
//       'do you like reading web novels',
//       'if you do how much did u read',
//       'which genere interests you',
//     ];

//     var animeList = [
//       'Naruto',
//       'One Punch Man',
//       'my hero acadamea',
//       'one piece',
//       'boruto',
//       'death note',
//       'Attack on titan',
//       'full metal Alchemist',
//       'Sword art online',
//       'hunter x hunter',
//       'steins gate',
//       'no game no life',
//       'kimetsu no yaiba',
//       'code geasus',
//       'noragami',
//       're:zero',
//       'mirai nikki',
//       'agamme ga kill',
//       'nanatsu no taizai',
//       'mob psycho',
//       'fairy tale',
//       'bleach',
//       'tokyo ghoul',
//       'cowboy bebop',
//       'jujutsu kaisen',
//       'soul eater',
//       'gintama'
//     ];
//     var answers3 = [
//       'less than 10',
//       'less than 30',
//       'less than 70',
//       'less than 100',
//       'more than 100'
//     ];
//     var answers4 = [
//       'less than week = 168 hrs',
//       'less than month =730.001 hrs',
//       'less than 3 months =2190 hrs',
//       'less than 8 months =5840.01hrs',
//       'more than 8 months'
//     ];
//     var answersgenere1 = [
//       ' Kodomo Manga: Comics for little kids',
//       'Shōnen Manga: Comics for young teenage boys',
//       'Shōjo Manga: Comics for young teenage girls',
//       'Seinen Manga: Comics for young adult males',
//       'Seijin Manga: Adult comics for males',
//       'Redisu (Lady’s) Manga: Comics for young adult females',
//       'Dōjinshi Manga: Comic publication that’s written by and for amateurs',
//       'Yonkoma Manga: Four-panel comics (usually published in newspapers)',
//       'Gekiga Manga: Comics focusing on serious topics geared toward mature audiences'
//     ];
//     var answersgenere2 = [
//       'Fantasy'
//           'Sci-Fi',
//       'Mystery',
//       'Thriller',
//       'Romance',
//       'Westerns',
//       'Dystopian',
//       'Contemporary',
//     ];
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('anime personality check'),
//           ),
//           body: Column(
//             children: [
//               Text(questions.first),
//               ElevatedButton(
//                   onPressed: pressedAns, //standard function calling
//                   child: Text('answer 1')),
//               ElevatedButton(
//                   onPressed: () =>
//                       print("answer 2 is chosen"), //anonymous inline fuction
//                   child: Text('answer 2')),
//               ElevatedButton(
//                   onPressed: () {
//                     //anonymous anaother way of function calling
//                     print('third button pressed');
//                   },
//                   child: Text('answer 3')),
//               ElevatedButton(
//                   onPressed: () => questionanswered(),
//                   child: Text('working answer'))
//             ],
//           )),
//     );
//   }
// }
// //flutter run -d chrome --web-renderer html   use to execute
