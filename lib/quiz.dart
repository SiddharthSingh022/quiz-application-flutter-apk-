import 'package:flutter/material.dart';
import 'package:adv_basic/question.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'start_screen.dart';
// import 'package:adv_basic/question.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({Key? key}) : super(key: key);

//   @override
//   _QuizState createState() => _QuizState();
// }

// class _QuizState extends State<Quiz> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:
//           StartScreen(), // Initial screen can be the StartScreen or wherever appropriate
//     );
//   }
// }
