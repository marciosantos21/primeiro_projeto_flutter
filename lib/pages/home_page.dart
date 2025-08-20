import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/extensions/extensions.dart';
// import 'package:primeiro_projeto_flutter/pages/create_person_page.dart';
import 'package:primeiro_projeto_flutter/routes/routes.dart';
import 'package:primeiro_projeto_flutter/widgets/listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro App"),
      ),
      body: PersonList(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 203, 232, 255),
        onPressed: () {
          // Navigator.of(context).pushNamed(Routes.newPage);
          context.pushNamed(Routes.createPersonPage);
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