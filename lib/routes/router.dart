import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/pages/home_page.dart';
import 'package:primeiro_projeto_flutter/pages/new_page.dart';
import 'package:primeiro_projeto_flutter/routes/routes.dart';

Map<String, WidgetBuilder> routes = {
  Routes.initialRoute: (BuildContext context) => HomePage(),
  Routes.newPage: (BuildContext context) => NewPage(),
};