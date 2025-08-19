import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';

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
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [                
                Text("ID: ${person.id}"),
                Text("Nome: ${person.nome}"),
                Text("Peso: ${person.peso.toPeso()}"),
                Text("Altura: ${person.altura.toAltura()}"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}