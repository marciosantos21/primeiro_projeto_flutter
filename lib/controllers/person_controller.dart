import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/models/create_person_dto.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';

class PersonController extends ChangeNotifier{
  List<Person> _personList = [];
  List<Person> get personList => _personList;

  void addPerson(CreatePersonDto createPerson) {
    final person = Person(
      id: _personList.length + 1, 
      nome: createPerson.nome, 
      altura: createPerson.altura, 
      peso: createPerson.peso,
    );

    _personList.add(person);
    notifyListeners();
  }

  void removePerson(Person person) {
    _personList.remove(person);
    notifyListeners();
  }
}