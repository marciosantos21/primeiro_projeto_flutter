import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/dependencies/injector.dart';
// import 'package:primeiro_projeto_flutter/pages/home_page.dart';
import 'package:primeiro_projeto_flutter/routes/router.dart';
import 'package:primeiro_projeto_flutter/routes/routes.dart';
// import 'package:primeiro_projeto_flutter/models/person.dart';
// import 'package:primeiro_projeto_flutter/widgets/listview_builder.dart';
// import 'package:primeiro_projeto_flutter/widgets/person_listtile.dart';

void main() {
  injector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initialRoute,
      routes: routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
      // home: HomePage(),
    );
  }
}




