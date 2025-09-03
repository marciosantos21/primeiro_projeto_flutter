import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/states/message_states.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  final SharedPreferences sharedPreferences;
  bool darkTheme = false;

  ValueNotifier<MessagesStates> mensagemNotifier = ValueNotifier(IddleMessage());

  ThemeController({
    required this.sharedPreferences
  });

  void toogleTheme (bool value) async {
    try {
      // throw Exception();
      darkTheme = !darkTheme;
      await sharedPreferences.setBool("theme", darkTheme);
      mensagemNotifier.value = SuccessMessage(message: darkTheme ? "Modo dark ativado com sucesso" : "Modo light ativado com sucesso");
      notifyListeners();
    } on Exception catch (error) {
      mensagemNotifier.value = ErrorMessage(message: "Ocorreu um erro ao mudar tema");
    }
  }

  Future<void> getTheme () async {
    final theme = sharedPreferences.getBool("theme");
    if(theme != null) {
      darkTheme = theme;
      notifyListeners();
    }
  }
}