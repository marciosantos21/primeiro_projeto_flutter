import 'package:get_it/get_it.dart';
import 'package:primeiro_projeto_flutter/controllers/person_controller.dart';
import 'package:primeiro_projeto_flutter/controllers/theme_controller.dart';

void injector() {
  final i = GetIt.instance;

  i.registerSingleton<PersonController>(PersonController());
  i.registerSingleton<ThemeController>(ThemeController());
}