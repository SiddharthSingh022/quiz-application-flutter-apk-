// import 'package:flutter/material.dart';
// import 'package:adv_basic/question.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({Key? key}) : super(key: key);

//   void _addNewQuestion(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         final TextEditingController questionController =
//             TextEditingController();
//         final TextEditingController answerController = TextEditingController();

//         return AlertDialog(
//           title: Text('Add a new question'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: questionController,
//                 decoration: InputDecoration(labelText: 'Enter the question'),
//               ),
//               TextField(
//                 controller: answerController,
//                 decoration: InputDecoration(labelText: 'Enter the answer'),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 // Handle the logic to add the new question
//                 // For now, let's just navigate to the QuestionScreen
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => QuestionScreen(),
//                   ),
//                 );
//               },
//               child: Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // Other widgets...

//           ElevatedButton(
//             onPressed: () {
//               _addNewQuestion(context);
//             },
//             child: Text('Add a new question'),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:adv_basic/question.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'aaj jaa',
            style: TextStyle(
              color: Color.fromARGB(174, 106, 25, 204),
              fontSize: 50,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionScreen()),
              );
            },
            icon: const Icon(Icons.account_tree_rounded),
            label: const Text("Start"),
          )
        ],
      ),
    );
  }
}
