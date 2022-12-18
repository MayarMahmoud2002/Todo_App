
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/layout/add_tasks_bottom_sheet.dart';
import 'package:todo_app/moudles/setting_screen/setting_screen.dart';
import 'package:todo_app/moudles/tasks_list_screen/tasks_list_screen.dart';
import 'package:todo_app/myProvider/my_provider.dart';
import 'package:todo_app/shared/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0 ;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: provider.mode== ThemeMode.light ? MintGreenColor:DarkColor ,
      appBar: AppBar(
        toolbarHeight: 130.0,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: Text(
            AppLocalizations.of(context)!.todolist,
            style: TextStyle(
              color: provider.mode== ThemeMode.light ? WhiteColor : DarkColor,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: tabs[currentindex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          currentIndex:currentindex ,
          onTap: (index)
          {
            currentindex = index;
            setState(() {

            });

          },

          backgroundColor: Colors.transparent,
          elevation: 0.0,
          items:
          [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.format_list_bulleted_sharp,
                  size: 35.0,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Icon(
                  Icons.settings_outlined,
                  size: 35.0,

                ),
              ),
              label: '',
            ),

          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: BlueColor,
        shape: StadiumBorder(
          side: BorderSide(
            color: provider.mode== ThemeMode.light ? WhiteColor : DarkColor,
            width: 4.0,
          ),
        ),
        onPressed: ()
        {
          addTasks(context);

        }
        ,
        child: Icon(
          Icons.add,
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }

  void addTasks (context)
  {
    showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        builder: (context)
        {
          return bottomSheet( );

        }
    );
  }


  List <Widget> tabs = [TasksListScreen() ,SettingScreen() ];
}
