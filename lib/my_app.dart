import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/routes/router.dart';
import 'package:primeiro_projeto_flutter/routes/routes.dart';
import 'package:primeiro_projeto_flutter/themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initialRoute,
      routes: routes,
      title: 'Flutter Demo',
      // theme: lightTheme,
      theme: darkTheme,
    );
  }
}