import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'John',
    'Alfredo',
    ' Llanes',
    'Coronel',
    'Diana',
    'Tepan',
    'Sigua',
    'Pablito',
    'Victoria',
    'LLanes',
    'TEPAN',
    'Coronel',
    ' Llanes',
    'Coronel',
    'Diana',
    'Tepan',
    'Sigua',
    'Pablito',
    'Victoria',
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((names) => ListTile(
                    title: Text(names),
                    trailing: const Icon(Icons.abc_outlined),
                  ))
              .toList(),

          // ListTile(
          //   // leading: Icon(Icons.abc_outlined),
          //   title: Text('hola mundo'),
          // )
        ],
      ),
    );
  }
}
