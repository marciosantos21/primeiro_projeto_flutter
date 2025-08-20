import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Página"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop();
          }, 
          child: Text("Voltar")
        ),
      ),
    );
  }
}