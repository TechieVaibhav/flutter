import 'package:flutter/material.dart';

// ignore: camel_case_types
class setClock extends StatefulWidget {
  const setClock({super.key});

  @override
  State<setClock> createState() => _setClockState();
}

// ignore: camel_case_types
class _setClockState extends State<setClock> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Set Clock',
      style: TextStyle(color: Colors.white, fontSize: 20),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
