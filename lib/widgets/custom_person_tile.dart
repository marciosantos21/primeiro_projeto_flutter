import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/widgets/custom_tile.dart';
import 'package:primeiro_projeto_flutter/widgets/personDialog.dart';

class CustomPersonTile extends StatelessWidget {
  final void Function(Person person) onDeletePerson;
  final Person person;

  const CustomPersonTile({
    super.key, 
    required this.person, 
    required this.onDeletePerson
  });

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      onTap: () {
        // print("Clicando no ID: ${person.id}");
        showDialog(
          context: context, 
          barrierDismissible: false,
          builder: (context) {
            return PersonDialog(
              person: person,
              onDeletePerson: onDeletePerson,
            );
          },
        );
      },
      color: Colors.blueAccent,
      leading: Text("ID: ${person.id}"),
      title: Text(
        person.nome,
        style: TextStyle(fontSize: 20),
      ),
      subTitle: Text("Peso: ${person.peso.toPeso()}"),
      trailing: Text("Altura: ${person.altura.toAltura()}"),
    );
  }
}