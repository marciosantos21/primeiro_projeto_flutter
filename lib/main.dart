import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/dependencies/injector.dart';
import 'package:primeiro_projeto_flutter/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await injector();
  runApp(const MyApp());
}