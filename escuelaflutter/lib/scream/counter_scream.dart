import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 19;

  void increase() {
    counter++;
    setState(() {});
  }

  void cero() {
    counter = 0;
    setState(() {});
  }

  void restar() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontsize = TextStyle(fontSize: 30, fontStyle: FontStyle.italic);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('COUNTER SCREAM'),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('NUMERO CLICKS', style: fontsize),
            Text('$counter', style: fontsize)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: botones_action(
        increaFN: increase,
        ceroFN: cero,
        restaFN: restar,
      ),
    );
  }
}

class botones_action extends StatelessWidget {
  final Function increaFN;
  final Function ceroFN;
  final Function restaFN;

  const botones_action({
    Key? key,
    required this.increaFN,
    required this.ceroFN,
    required this.restaFN,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add_circle_outline_outlined),
          onPressed: () => increaFN(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.access_alarm),
          onPressed: () => ceroFN(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => restaFN(),
        ),
      ],
    );
  }
}
