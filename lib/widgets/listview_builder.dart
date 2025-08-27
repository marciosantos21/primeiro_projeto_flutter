import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/mock/generate_person.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
// import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/widgets/custom_person_tile.dart';
// import 'package:primeiro_projeto_flutter/widgets/person_listtile.dart';

class PersonList extends StatelessWidget {
  final List<Person> person;
  const PersonList({
    super.key, 
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    if(person.isEmpty){
      return Center(
        child: Text(
          "Nenhuma pessoa cadastrada!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: person.length,
      itemBuilder: (context,  index) {
        // return PersonListTile(person: person[index]);
        return CustomPersonTile(
          person: person[index],
        );
      },
    );
  }
}