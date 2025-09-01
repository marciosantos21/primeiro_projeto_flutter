import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  final SharedPreferences sharedPreferences;
  bool darkTheme = false;

  ValueNotifier<String> mensagemNotifier = ValueNotifier("");

  ThemeController({
    required this.sharedPreferences
  });

  void toogleTheme (bool value) async {
    darkTheme = !darkTheme;
    await sharedPreferences.setBool("theme", darkTheme);
    mensagemNotifier.value = darkTheme ? "Modo dark ativado com sucesso" : "Modo light ativado com sucesso";
    notifyListeners();
  }

  Future<void> getTheme () async {
    final theme = sharedPreferences.getBool("theme");
    if(theme != null) {
      darkTheme = theme;
      notifyListeners();
    }
  }
}