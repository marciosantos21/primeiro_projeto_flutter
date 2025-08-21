import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
import 'package:primeiro_projeto_flutter/models/create_person_dto.dart';

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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Página"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if(value?.isEmpty == true){
                    return "Por favor, preencha o nome";
                  }

                  return null;
                },
                controller: nomeController,
                decoration: InputDecoration(
                  label: Text("Nome"),
                  border: OutlineInputBorder()
                ),
              ),
              gap,
              TextFormField(
                validator: (value) {
                  if(value?.isEmpty == true){
                    return "Por favor, preencha o peso";
                  }

                  return null;
                },
                controller: pesoController,
                decoration: InputDecoration(
                  label: Text("Peso"),
                  border: OutlineInputBorder()
                ),
              ),
              gap,
              TextFormField(
                validator: (value) {
                  if(value?.isEmpty == true){
                    return "Por favor, preencha o altura";
                  }

                  return null;
                },
                controller: alturaController,
                decoration: InputDecoration(
                  label: Text("Altura"),
                  border: OutlineInputBorder(),
                ),
              ),
              gap,
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if(formKey.currentState?.validate() == true){
                          // print("Formulário válido!");
                          final createPerson = CreatePersonDto(
                            nome: nomeController.text, 
                            altura: int.parse(alturaController.text), 
                            peso: double.parse(pesoController.text),
                          );
                        }
                      },  
                      child: Text("Salvar")
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}