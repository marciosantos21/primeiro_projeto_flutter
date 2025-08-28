import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';

class PersonListTile extends StatelessWidget {
  final Person person;
  const PersonListTile({
    super.key, 
    required this.person
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(83, 33, 149, 243),
      child: ListTile(
        leading: Text("ID: ${person.id}"),
        title: Text("Nome: ${person.nome}"),
        subtitle: Text("Peso: ${person.peso.toPeso()}"),
        trailing: Text("Altura: ${person.altura.toAltura()}"),
      ),
    );
  }
}