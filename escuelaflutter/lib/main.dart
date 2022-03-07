import 'package:escuelaflutter/scream/counter_scream.dart';
import 'package:flutter/material.dart';
// import 'package:escuelaflutter/scream/home_scream.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
