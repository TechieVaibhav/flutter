import 'dart:async';

import 'package:flutter/material.dart';
import 'package:switching_onescreen_to_another/main.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Intro'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              changeByTimer(context);
            },
            child: const Text('Tap on me')),
      ),
    );
  }

  void navigate(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const MyHomePage(
                  title: 'My Title',
                )));
  }

  void pushReplacement(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const MyHomePage(
                  title: 'My Title',
                )));
  }

  void changeByTimer(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      pushReplacement(context);
    });
  }
}
