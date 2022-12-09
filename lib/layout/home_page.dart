
import 'package:flutter/material.dart';
import 'package:todo_app/layout/add_tasks_bottom_sheet.dart';
import 'package:todo_app/moudles/setting_screen/setting_screen.dart';
import 'package:todo_app/moudles/tasks_list_screen/tasks_list_screen.dart';
import 'package:todo_app/myProvider/tabProvider/tad_provider.dart';
import 'package:todo_app/shared/styles/colors.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: MintGreenColor,
      appBar: AppBar(
        title: Text(
          'To Do List',
        ),
      ),
      body: tabs[currentindex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
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
              icon: Icon(
                Icons.list_outlined,
                size: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30.0,

              ),
              label: '',
            ),

          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: WhiteColor,
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
