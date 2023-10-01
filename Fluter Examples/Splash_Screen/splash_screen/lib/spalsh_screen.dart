import 'dart:async';
import 'dart:js' show context;

import 'package:flutter/material.dart';
import 'package:splash_screen/dashbord_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      _completeLogin();
    });
  }

  void _completeLogin() {
    Navigator.pushReplacement<void, void>(
      context as BuildContext,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const DashbordScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueAccent,
      child: const Center(
          child: Text(
        'Classic App',
        style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      )),
    ));
  }
}
