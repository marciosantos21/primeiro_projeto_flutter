import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';

class CreatePersonPage extends StatefulWidget {
  const CreatePersonPage({super.key});

  @override
  State<CreatePersonPage> createState() => _CreatePersonPageState();
}

class _CreatePersonPageState extends State<CreatePersonPage> {
  final gap = SizedBox(height: 16);
  final nomeController = TextEditingController();
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Página"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: nomeController,
              decoration: InputDecoration(
                label: Text("Nome"),
                border: OutlineInputBorder()
              ),
            ),
            gap,
            TextFormField(
              controller: pesoController,
              decoration: InputDecoration(
                label: Text("Peso"),
                border: OutlineInputBorder()
              ),
            ),
            gap,
            TextFormField(
              controller: alturaController,
              decoration: InputDecoration(
                label: Text("Altura"),
                border: OutlineInputBorder()
              ),
            ),
            gap,
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      print("Nome: ${nomeController.text}");
                      print("Peso: ${pesoController.text}");
                      print("Altura: ${alturaController.text}");
                    },  
                    child: Text("Salvar")
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}