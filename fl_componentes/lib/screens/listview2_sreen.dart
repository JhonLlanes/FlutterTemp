import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
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

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LIST VIEW SEPARADOR 2')),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(
                  Icons.abc_outlined,
                  color: Colors.lightGreen,
                ),
                onTap: () {
                  final names = options[index];
                  print(names);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
