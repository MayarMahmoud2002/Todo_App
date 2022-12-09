
import 'package:flutter/material.dart';
import 'package:todo_app/shared/styles/colors.dart';

class BottomSheetLanguage extends StatefulWidget {

  @override
  _BottomSheetLanguageState createState() => _BottomSheetLanguageState();
}

class _BottomSheetLanguageState extends State<BottomSheetLanguage> {
  bool isChecked1 = false;
  bool isChecked2 = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text(
                'English',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: BlueColor,
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
              Text(
                'Arabic',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: BlueColor,
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
