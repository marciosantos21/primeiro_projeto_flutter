import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:primeiro_projeto_flutter/controllers/person_controller.dart';
import 'package:primeiro_projeto_flutter/controllers/theme_controller.dart';
// import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
// import 'package:primeiro_projeto_flutter/models/create_person_dto.dart';
// import 'package:primeiro_projeto_flutter/models/person.dart';
// import 'package:primeiro_projeto_flutter/pages/create_person_page.dart';
import 'package:primeiro_projeto_flutter/routes/routes.dart';
import 'package:primeiro_projeto_flutter/widgets/person/listview_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ThemeController themeController = GetIt.instance();
  final PersonController personController = GetIt.instance();

  @override
  void initState() {
    personController.mensagemNotifier.addListener(_onPessonMensage);
    themeController.mensagemNotifier.addListener(_onThemeMensage);
    super.initState();
  }

  void _onPessonMensage() {
    print("Mensagem: ${personController.mensagemNotifier.value}");
  }

  void _onThemeMensage() {
    print("Mensagem theme: ${themeController.mensagemNotifier.value}");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro App"),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("Modo escuro"),
                Switch(
                  value: themeController.darkTheme,
                  onChanged: (value) {
                    themeController.toogleTheme(value);
                  }
                ),
              ],
            ),
            
          ],
        ),
      ),
      body: ListenableBuilder(
        listenable: personController,
        builder: (context, child) {
          return PersonList(
            person: personController.personList,
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 203, 232, 255),
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.createPersonPage);
        },
        child: Icon(
          Icons.navigate_next,
          color: Colors.blue,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  @override
  void dispose() {
    personController.mensagemNotifier.removeListener(_onPessonMensage);
    themeController.mensagemNotifier.removeListener(_onThemeMensage);
    super.dispose();
  }
}