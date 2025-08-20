import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/widgets/default_dialog_container.dart';

class PersonDialog extends StatelessWidget {
  final Person person;

  const PersonDialog({
    super.key,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    // final gap = SizedBox(height: 8, width: 15,);

    return AlertDialog(
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [                
            DefaultDialogContainer(child: Text("ID: ${person.id}"),),
            DefaultDialogContainer(child: Text("Nome: ${person.nome}"),),
            DefaultDialogContainer(child: Text("Peso: ${person.peso.toPeso()}"),),
            DefaultDialogContainer(child: Text("Altura: ${person.altura.toAltura()}"),),
            // Text("Nome: ${person.nome}"),
            // Text("Peso: ${person.peso.toPeso()}"),
            // Text("Altura: ${person.altura.toAltura()}"),
          ],
        ),
      ),
    );
  }
}