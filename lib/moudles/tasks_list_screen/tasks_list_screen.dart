import 'package:flutter/cupertino.dart';

class TasksListScreen extends StatelessWidget {
  const TasksListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}


// import 'package:flutter/material.dart';
// import 'dart:ui';
// class TasksListScreen extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: TweenAnimationBuilder<double>(
//         duration: Duration(seconds: 3),
//         curve: Curves.bounceIn,
//         tween : Tween(begin: 1.0 , end: 0.0),
//         child:Center(
//           child: Text(
//             'Animation Testing',
//             style: TextStyle(
//               fontSize: 25.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         builder: (context , value ,child)
//         {
//           return Transform.translate(
//               offset: Offset(200*value , 0.0),
//             child: child,
//
//           );
//         },
//
//       ),
//     );
//   }
// }
