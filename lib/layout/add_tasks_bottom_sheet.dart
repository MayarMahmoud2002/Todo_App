
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/shared/styles/colors.dart';
import 'package:todo_app/shared/styles/theme.dart';

class bottomSheet extends StatefulWidget {
  static const String routeName = 'bottomsheet';

  @override
  _bottomSheetState createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
                'Add New Task',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: BlueColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Form(
                  child:TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color: MintGreenColor),
                      ),
                      hintText: 'enter title of task',
                      hintStyle: TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),

                  ) ,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Form(
                child:TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: MintGreenColor),
                    ),
                    hintText: 'enter description of task',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),

                ) ,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Select Time',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: BlueColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: ()
              {
                chooseDate(context);

              },
              child: Text(
                '${selectedDate.year}/${selectedDate.month}/${selectedDate.day} ',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: BlackColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: ()
              {},
              child: CircleAvatar(
                radius: 30.0,
                backgroundColor: BlueColor,
                child: Icon(
                  Icons.check,
                  size: 35.0,
                  color: WhiteColor,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  void chooseDate (context) async
  {
    DateTime? chosenDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2050),
    );
    if (chosenDate == null) return;
    selectedDate = chosenDate;
    setState(()
    {

    });
    // selectedDate = DateTime.now();

  }
}
