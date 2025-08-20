import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/pages/home_page.dart';
import 'package:primeiro_projeto_flutter/pages/create_person_page.dart';
import 'package:primeiro_projeto_flutter/routes/routes.dart';

Map<String, WidgetBuilder> routes = {
  Routes.initialRoute: (BuildContext context) => HomePage(),
  Routes.createPersonPage: (BuildContext context) => CreatePersonPage(),
};