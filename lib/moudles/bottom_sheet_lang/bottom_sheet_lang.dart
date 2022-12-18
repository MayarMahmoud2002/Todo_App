
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/myProvider/my_provider.dart';
import 'package:todo_app/shared/styles/colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetLanguage extends StatefulWidget {

  @override
  _BottomSheetLanguageState createState() => _BottomSheetLanguageState();
}

class _BottomSheetLanguageState extends State<BottomSheetLanguage> {
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

                  provider.languageProvider('en');

                },
                child: Text(
                  AppLocalizations.of(context)!.english,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: BlueColor,
                  ),
                ),
              ),
              Checkbox(
                  value: isChecked1,
                  onChanged: (bool? value)
                  {
                    setState(() {
                      if (isChecked1 = value!)
                      {
                        isChecked2 = false;
                        provider.languageProvider('en');

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


                  provider.languageProvider('ar');

                },
                child: Text(
                  AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: BlueColor,
                  ),
                ),
              ),
              Checkbox(
                value: isChecked2,
                // hoverColor: Colors.grey,
                // activeColor:Colors.red ,
                onChanged: (bool? value)
                {
                  setState(() {
                    if (isChecked2 = value!)
                    {
                      isChecked1 = false;
                      provider.languageProvider('ar');


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
