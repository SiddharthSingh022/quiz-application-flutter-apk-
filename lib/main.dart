import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'quiz.dart';
import 'package:adv_basic/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartScreen(), // StartScreen as the initial screen
    );
  }
}



// import 'package:adv_basic/quiz.dart';
// import 'package:flutter/material.dart';
// import 'package:adv_basic/start_screen.dart'; // Importing the StartScreen widget
// import 'package:adv_basic/quiz.dart';

// void main() {
//   // runApp(MyApp());
//   runApp(const Quiz());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: _buildBackgroundContainer(),
//       ),
//     );
//   }

//   Widget _buildBackgroundContainer() {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color.fromARGB(255, 135, 17, 204),
//             Color.fromARGB(255, 117, 125, 235),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: const StartScreen(), // Assuming StartScreen is a widget
//     );
//   }
// }
