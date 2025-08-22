import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/widgets/default_dialog_container.dart';

class PersonDialog extends StatelessWidget {
  final Person person;
  final void Function(Person person) onDeletePerson;

  const PersonDialog({
    super.key,
    required this.person,
    required this.onDeletePerson,
  });

  @override
  Widget build(BuildContext context) {
    final gapHeight = SizedBox(height: 8);

    return AlertDialog(
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () { 
                Navigator.of(context).pop();
                onDeletePerson(person);
              }, 
              child: Text(
                "Excluir",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom( 
                backgroundColor: Colors.red[300], 
              ),
            ),
            ElevatedButton(
              onPressed: () { 
                Navigator.of(context).pop();
              }, 
              child: Text(
                "Fechar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom( 
                backgroundColor: Colors.blueAccent, 
              ),
            ),
          ],
        ),
      ],
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [                
            Text(
              "Informações do usuario",
              style: TextStyle(color: Colors.black),
            ),
            gapHeight,
            DefaultDialogContainer(child: Text("ID: ${person.id}"),),
            DefaultDialogContainer(child: Text("Nome: ${person.nome}"),),
            DefaultDialogContainer(child: Text("Peso: ${person.peso.toPeso()}"),),
            DefaultDialogContainer(child: Text("Altura: ${person.altura.toAltura()}"),),
          ],
        ),
      ),
    );
  }
}