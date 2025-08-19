import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/mock/generate_person.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/widgets/person_listtile.dart';

class PersonList extends StatelessWidget {
  const PersonList({super.key});

  @override
  Widget build(BuildContext context) {
    final person = generatePerson(20);

    return ListView.builder(
      itemCount: person.length,
      itemBuilder: (context,  index) {
        return PersonListTile(person: person[index]);
      },
    );
  }
}