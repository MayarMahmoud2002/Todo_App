import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/myProvider/my_provider.dart';
import 'package:todo_app/shared/styles/colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo_app/shared/styles/theme.dart';

class BottomSheetMode extends StatefulWidget {
  @override
  _BottomSheetModeState createState() => _BottomSheetModeState();
}

class _BottomSheetModeState extends State<BottomSheetMode> {
  bool isChecked1 = false;

  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              InkWell(
                onTap: ()
                {
                  isChecked1 = true;
                  isChecked2 = false;

                  provider.ThemeProvider(ThemeMode.light);

                },
                child: Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: BlueColor,
                  ),
                ),
              ),
              Checkbox(
                value: isChecked1,
                hoverColor: BlackColor,
                onChanged: (bool? value)
                {
                  setState(() {
                    if (isChecked1 = value!)
                    {
                      isChecked2 = false;
                      provider.ThemeProvider(ThemeMode.light);

                    }
                  }
                  );


                },
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: ()
                {
                  isChecked2 = true;
                  isChecked1 = false;


                  provider.ThemeProvider(ThemeMode.dark);

                },
                child: Text(
                  AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: BlueColor,
                  ),
                ),
              ),
              Checkbox(
                value: isChecked2,
                hoverColor: BlackColor,
                onChanged: (bool? value)
                {
                  setState(() {
                    if (isChecked2 = value!)
                    {
                      isChecked1 = false;
                      provider.ThemeProvider(ThemeMode.dark);


                    }

                  });

                },
              ),

            ],
          ),

        ],
      ),
    );
  }
}
