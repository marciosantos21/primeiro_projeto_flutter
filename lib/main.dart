import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/widgets/listview_builder.dart';
import 'package:primeiro_projeto_flutter/widgets/person_listtile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu primeiro App"),
        ),
        // body: MeuStatelessWidget(),
        // body: PersonListTile(
        //   person: Person(
        //     id: 1, 
        //     nome: "Marcio Santos", 
        //     altura: 170, 
        //     peso: 68.0
        //   ),
        // ),
        body: PersonList(),
      ),
    );
  }
}




