import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  bool darkTheme = false;

  void toogleTheme (bool value) {
    darkTheme = !darkTheme;
    notifyListeners();
  }
}