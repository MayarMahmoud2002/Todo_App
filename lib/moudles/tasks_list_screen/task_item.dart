import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/shared/styles/colors.dart';
import 'package:todo_app/shared/styles/theme.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: WhiteColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                width: 3,
                height: 70.0,
                color: BlueColor,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Task Title',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: BlueColor,
                        ),

                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Task Description',
                      ),


                    ],
                  ),
                ),
              ),
              Container(
                height: 30.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: BlueColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  Icons.done,
                  size: 30.0,
                  color: WhiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
