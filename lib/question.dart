import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _score = 0;
  int _questionIndex = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      'questionText': 'What is the capital of France?',
      'answers': ['Paris', 'Berlin', 'Rome', 'London'],
      'correctAnswer': 'Paris',
    },
    {
      'questionText': 'Who painted the Mona Lisa?',
      'answers': ['Van Gogh', 'Leonardo da Vinci', 'Picasso', 'Michelangelo'],
      'correctAnswer': 'Leonardo da Vinci',
    },
    // Add more questions here
  ];

  void _answerQuestion(String selectedAnswer) {
    final bool isCorrect =
        _questions[_questionIndex]['correctAnswer'] == selectedAnswer;

    setState(() {
      if (isCorrect) {
        _score++;
      } else {
        // Show a dialog with the correct answer
        _showCorrectAnswerDialog(_questions[_questionIndex]['correctAnswer']);
      }

      _questionIndex++;
    });
  }

  void _showCorrectAnswerDialog(String correctAnswer) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Wrong Answer'),
          content: Text('The correct answer is $correctAnswer'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Container(
        width: double.infinity, // Cover entire width
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.green
            ], // Adjust colors as per your choice
          ),
        ),
        child: _questionIndex < _questions.length
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _questions[_questionIndex]['questionText'] as String,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    ...(_questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return ElevatedButton(
                        onPressed: () => _answerQuestion(answer),
                        child: Text(answer),
                      );
                    }).toList(),
                  ],
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Quiz Completed!',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      'Your Score: $_score',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}


























// import 'package:flutter/material.dart';

// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen({Key? key}) : super(key: key);

//   @override
//   _QuestionScreenState createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<QuestionScreen> {
//   int _score = 0;
//   int _questionIndex = 0;

//   final List<Map<String, dynamic>> _questions = [
//     {
//       'questionText': 'What is the capital of France?',
//       'answers': ['Paris', 'Berlin', 'Rome', 'London'],
//       'correctAnswer': 'Paris',
//     },
//     {
//       'questionText': 'Who painted the Mona Lisa?',
//       'answers': ['Van Gogh', 'Leonardo da Vinci', 'Picasso', 'Michelangelo'],
//       'correctAnswer': 'Leonardo da Vinci',
//     },
//     // Add more questions here
//   ];

//   void _answerQuestion(String selectedAnswer) {
//     final bool isCorrect =
//         _questions[_questionIndex]['correctAnswer'] == selectedAnswer;

//     setState(() {
//       if (isCorrect) {
//         _score++;
//       } else {
//         // Show a dialog with the correct answer
//         _showCorrectAnswerDialog(_questions[_questionIndex]['correctAnswer']);
//       }

//       _questionIndex++;
//     });
//   }

//   void _showCorrectAnswerDialog(String correctAnswer) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Wrong Answer'),
//           content: Text('The correct answer is $correctAnswer'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz'),
//       ),
//       body: _questionIndex < _questions.length
//           ? Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(_questions[_questionIndex]['questionText'] as String),
//                 ...(_questions[_questionIndex]['answers'] as List<String>)
//                     .map((answer) {
//                   return ElevatedButton(
//                     onPressed: () => _answerQuestion(answer),
//                     child: Text(answer),
//                   );
//                 }).toList(),
//               ],
//             )
//           : Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Quiz Completed!'),
//                   Text('Your Score: $_score'),
//                 ],
//               ),
//             ),
//     );
//   }
// }



















// import 'package:flutter/material.dart';

// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen({Key? key}) : super(key: key);

//   @override
//   _QuestionScreenState createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<QuestionScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Question Screen'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context)
//                 .pop(); // This will navigate back to the previous screen
//           },
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Your Question Screen Content Here'),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context)
//                     .pop(); // Simulating 'Go Back' on button press
//               },
//               child: Text('Go Back'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
