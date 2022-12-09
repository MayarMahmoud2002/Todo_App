import 'package:flutter/material.dart';

class DropDowen extends StatefulWidget {

  @override
  _DropDowenState createState() => _DropDowenState();
}

class _DropDowenState extends State<DropDowen> {
  String dropdownvalue = 'Arabic';

  var items =
  [
    'Arabic',
    'English',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value:dropdownvalue ,
      icon: Icon(
        Icons.keyboard_arrow_down,
      ),
      items:items.map((String items)
      {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (String? newValue)
      {
        setState(() {
          dropdownvalue = newValue!;


        });

      },
    );
  }
}
