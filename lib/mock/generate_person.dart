import 'dart:math';

import 'package:faker/faker.dart' hide Person;
import 'package:primeiro_projeto_flutter/models/person.dart';

List<Person> generatePerson(int quantidade) {
  final faker = Faker();
  return List.generate(
    quantidade, 
    (index) => Person(
      id: index + 1, 
      nome: faker.person.name(), 
      altura: Random().nextInt(200), 
      peso: faker.randomGenerator.decimal(min: 50, scale: 100)
    ),
  );
}