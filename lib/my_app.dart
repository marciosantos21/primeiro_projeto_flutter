import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:primeiro_projeto_flutter/controllers/theme_controller.dart';
import 'package:primeiro_projeto_flutter/routes/router.dart';
import 'package:primeiro_projeto_flutter/routes/routes.dart';
import 'package:primeiro_projeto_flutter/themes/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = GetIt.instance();

    return ListenableBuilder(
      listenable: themeController,
      builder: (context, child) {
        return MaterialApp(
          initialRoute: Routes.initialRoute,
          routes: routes,
          title: 'Flutter Demo',
          // theme: lightTheme,
          theme: themeController.darkTheme == true ? darkTheme : lightTheme,
        );
      }
    );
  }
}