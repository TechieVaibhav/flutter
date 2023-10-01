import 'package:flutter/material.dart';

// ignore: camel_case_types
class ampmPicker extends StatefulWidget {
  const ampmPicker({super.key});

  @override
  State<ampmPicker> createState() => _ampmPickerState();
}

// ignore: camel_case_types
class _ampmPickerState extends State<ampmPicker> {
  String timeformate = "am";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              timeformate = "am";
            });
          },
          child: SizedBox(
              child: Text('am',
                  style: TextStyle(
                      color: timeformate == "am" ? Colors.white : Colors.grey,
                      fontSize: 20))),
        ),
        const SizedBox(height: 2),
        GestureDetector(
          onTap: () {
            setState(() {
              timeformate = "pm";
            });
          },
          child: SizedBox(
              child: Text('pm',
                  style: TextStyle(
                      color: timeformate == "pm" ? Colors.white : Colors.grey,
                      fontSize: 20))),
        ),
      ],
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
