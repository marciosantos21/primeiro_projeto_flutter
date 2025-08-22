import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
import 'package:primeiro_projeto_flutter/models/create_person_dto.dart';
import 'package:primeiro_projeto_flutter/models/person.dart';
// import 'package:primeiro_projeto_flutter/pages/create_person_page.dart';
import 'package:primeiro_projeto_flutter/routes/routes.dart';
import 'package:primeiro_projeto_flutter/widgets/listview_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Person> personList = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro App"),
      ),
      body: PersonList(
        person: personList,
        onDeletePerson: (person) {
          // print("Deletando $person");
          personList.remove(person);
          setState(() { });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 203, 232, 255),
        onPressed: () async {
          final result = await Navigator.of(context).pushNamed(Routes.createPersonPage);

          if(result != null) {
            final personDto = result as CreatePersonDto;
            final personConfig = Person(
              id: personList.length + 1, 
              nome: personDto.nome, 
              altura: personDto.altura, 
              peso: personDto.peso
            );

            personList.add(personConfig);    
            setState(() { });      
          }
          // print("result $result");
          // context.pushNamed(Routes.createPersonPage);
          // Navigator.of(context).pushAndRemoveUntil(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return NewPage();
          //     },
          //   ),
          //   (route) => false,
          // );
        },
        child: Icon(
          Icons.navigate_next,
          color: Colors.blue,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}