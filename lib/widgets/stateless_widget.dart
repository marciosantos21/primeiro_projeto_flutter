import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/widgets/stateful_widget.dart';

class MeuStatelessWidget extends StatefulWidget {
  const MeuStatelessWidget({super.key});

  @override
  State<MeuStatelessWidget> createState() => _MeuStatelessWidgetState();
}

class _MeuStatelessWidgetState extends State<MeuStatelessWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: $count",
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
          ],
        ),
        SizedBox(height: 16,),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          }, 
          child: Text("Clique aqui"),
        ),
        MeuStateFulWidget(
          callback: () {
            setState(() {
              count++;
            });
          },
        ),
      ],
    );
  }
}