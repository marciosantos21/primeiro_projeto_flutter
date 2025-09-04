import 'package:faker/faker.dart' hide Person;
import 'package:primeiro_projeto_flutter/models/person.dart';

List<Person> generatePerson(int quantidade) {
  final faker = Faker();
  return List.generate(
    quantidade, 
    (index) => Person(
      id: (index + 1).toString(), 
      nome: faker.person.name(), 
      altura: faker.randomGenerator.integer(210, min: 150), 
      peso: faker.randomGenerator.decimal(min: 50, scale: 100)
    ),
  );
}