import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/widgets/custom_tile.dart';

class CustomPersonTile extends StatelessWidget {
  final Person person;

  const CustomPersonTile({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      color: Colors.blueAccent,
      leading: Text("ID: ${person.id}"),
      title: Text(
        person.nome,
        style: TextStyle(fontSize: 20),
      ),
      subTitle: Text("Peso: ${person.peso.toStringAsFixed(2)} kg"),
      trailing: Text("Altura: ${person.altura} cm"),
    );
  }
}