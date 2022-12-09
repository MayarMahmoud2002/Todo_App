import 'package:flutter/material.dart';
import 'package:todo_app/layout/home_page.dart';
import 'package:todo_app/shared/styles/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomePage.routeName ,
      routes:
      {
        HomePage.routeName : (h) => HomePage(),
      } ,
      theme:ThemeData.light() ,
      darkTheme:ThemeData.dark() ,
      themeMode: ThemeMode.light,


    );
  }
}

