import 'package:get_it/get_it.dart';
import 'package:primeiro_projeto_flutter/controllers/person_controller.dart';
import 'package:primeiro_projeto_flutter/controllers/theme_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> injector() async {
  final i = GetIt.instance;

  i.registerSingleton<PersonController>(PersonController());
  i.registerSingleton<ThemeController>(ThemeController(
    sharedPreferences: await SharedPreferences.getInstance()
  ));
}