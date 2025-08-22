import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/controllers/person_controller.dart';
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
  final PersonController personController = PersonController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro App"),
      ),
      body: PersonList(
        person: personController.personList,
        onDeletePerson: (person) {
          personController.removePerson(person);
          setState(() { });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 203, 232, 255),
        onPressed: () async {
          final result = await Navigator.of(context).pushNamed(Routes.createPersonPage);

          if(result != null) {
            final personDto = result as CreatePersonDto;
            personController.addPerson(personDto);
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