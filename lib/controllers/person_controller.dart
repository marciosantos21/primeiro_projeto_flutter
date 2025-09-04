import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/models/create_person_dto.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
import 'package:primeiro_projeto_flutter/services/api_client.dart';
import 'package:primeiro_projeto_flutter/states/message_states.dart';

class PersonController extends ChangeNotifier{
  List<Person> _personList = [];
  List<Person> get personList => _personList;

  final apiClient = ApiClient();

  ValueNotifier<MessagesStates> mensagemNotifier = ValueNotifier(IddleMessage());

  bool _loading = false;
  bool get loaging => _loading;

  void getPerson() async {
    _loading = true;
    notifyListeners();

    try{
      final person = await apiClient.get();
      _personList = person;
    } on Exception catch (error){
      print("ERROR: $error");
    }finally {
      _loading = false;
      notifyListeners();
    }
  }
  
  void addPerson(CreatePersonDto createPerson) {
    try{ 
      // throw Exception();      
      final person = Person(
        id: (_personList.length + 1).toString(), 
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