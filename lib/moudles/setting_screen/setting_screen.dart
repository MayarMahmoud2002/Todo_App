import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/moudles/bottom_sheet_lang/bottom_sheet_lang.dart';
import 'package:todo_app/moudles/bottom_sheet_mode/bottom_sheet_mode.dart';
import 'package:todo_app/moudles/dropDowen/drop_dowen.dart';
import 'package:todo_app/shared/styles/colors.dart';
import 'package:todo_app/shared/styles/theme.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String text = '';



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Text(
                'Language',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          InkWell(
            onTap: ()
            {
              bottomSheetLang();

            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: BlueColor),
                  color: WhiteColor,
                ),
                width: double.infinity,
                height: 50.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'English',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: BlueColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Text(
              'Mode',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          InkWell(
            onTap: ()
            {
              bottomSheetMode();

            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: BlueColor),
                  color: WhiteColor,
                ),
                width: double.infinity,
                height: 50.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Light',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: BlueColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ),






        ],
      ),
    );
  }
  void bottomSheetLang ()
  {
     showModalBottomSheet(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(25.0),
         ),
         // isScrollControlled: true,
        context: context,
        builder: (context)
        {
          return BottomSheetLanguage();

        }

    );

  }


  void bottomSheetMode ()
  {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        // isScrollControlled: true,
        context: context,
        builder: (context)
        {
          return BottomSheetMode();
        }
    );
  }

}



