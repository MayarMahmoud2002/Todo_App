
import 'package:flutter/material.dart';
import 'package:todo_app/shared/styles/theme.dart';

class MyProvider extends ChangeNotifier
{
  String languageCode = "en";
  ThemeMode mode = ThemeMode.light;
  void languageProvider (String lang)
  {
    languageCode = lang;
    notifyListeners();

  }

  void ThemeProvider (ThemeMode modee)
  {
    mode = modee  ;
    notifyListeners();

  }
}