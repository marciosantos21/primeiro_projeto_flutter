import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/models/create_person_dto.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/states/message_states.dart';

class PersonController extends ChangeNotifier{
  List<Person> _personList = [];
  List<Person> get personList => _personList;

  ValueNotifier<MessagesStates> mensagemNotifier = ValueNotifier(IddleMessage());
  
  void addPerson(CreatePersonDto createPerson) {
    try{ 
      // throw Exception();      
      final person = Person(
        id: _personList.length + 1, 
        nome: createPerson.nome, 
        altura: createPerson.altura, 
        peso: createPerson.peso,
      );

      _personList.add(person);
      mensagemNotifier.value = SuccessMessage(message: "Pessoa adicionada com sucesso.");
      notifyListeners();
    } on Exception catch (error) {
      mensagemNotifier.value = ErrorMessage(message: "Ocorreu um erro ao adicionar pessoa");
    }
  }

  void removePerson(Person person) {
    _personList.remove(person);
    mensagemNotifier.value = SuccessMessage(message: "Pessoa removida com sucesso.");
    notifyListeners();
  }
}