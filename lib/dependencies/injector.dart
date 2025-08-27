import 'package:get_it/get_it.dart';
import 'package:primeiro_projeto_flutter/controllers/person_controller.dart';

void injector() {
  GetIt.instance.registerSingleton<PersonController>(PersonController());
}