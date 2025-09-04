import 'package:dio/dio.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';

final Dio dio = Dio();
class ApiClient {
  Future<List<Person>> get() async {
    final request = await dio.get("http://192.168.15.6:3000/person");

    if(request.statusCode == 200){
      final data = request.data;

      final personJson = data as List; //<Map<String, dynamic>>;

      return personJson
        .map(
          (personJson) => Person(
            id: personJson["id"], 
            nome: personJson["nome"], 
            altura: personJson["altura"], 
            peso: personJson["peso"]
          ),
        )
        .toList();
    }

    throw Exception("Status COde Invalido");
  }
}

// Map<String, dynamic> personJson = {
//   "id": "8795",
//   "nome": "Pipoca",
//   "altura": 40,
//   "peso": 5.5
// };

// final List<Map<String, dynamic>> lista = [personJson];