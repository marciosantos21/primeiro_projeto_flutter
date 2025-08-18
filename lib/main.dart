import 'package:flutter/material.dart';

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
        body: MeuStatelessWidget(),
      ),
    );
  }
}

class MeuStatelessWidget extends StatelessWidget {
  const MeuStatelessWidget({super.key});
  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: $count",
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
          ],
        ),
        SizedBox(height: 16,),
        ElevatedButton(
          onPressed: () {
            count++;
          }, 
          child: Text("Clique aqui"),
        )
      ],
    );
  }
}
