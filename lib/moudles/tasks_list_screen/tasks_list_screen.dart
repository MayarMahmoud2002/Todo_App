import 'package:flutter/cupertino.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/moudles/tasks_list_screen/task_item.dart';

class TasksListScreen extends StatelessWidget {
  const TasksListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CalendarTimeline (
            initialDate: DateTime(2020, 4, 20),
            firstDate: DateTime(2019, 1, 15),
            lastDate: DateTime(2020, 11, 20),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.blueGrey,
            dayColor: Colors.teal[200],
            activeDayColor: Colors.white,
            activeBackgroundDayColor: Colors.redAccent[100],
            dotsColor: Color(0xFF333A47),
            selectableDayPredicate: (date) => date.day != 23,
            locale: 'en_ISO',
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 40,
                itemBuilder: (x , index)
                {
                  return TaskItem();

                }),
          )

        ],
      ),
    );
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
