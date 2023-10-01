import 'package:flutter/material.dart';

class CustomPickerView extends StatefulWidget {
  const CustomPickerView({super.key});

  @override
  State<CustomPickerView> createState() => _CustomPickerViewState();
}

class _CustomPickerViewState extends State<CustomPickerView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Set Clock',
            style: TextStyle(color: Colors.amberAccent, fontSize: 22)),
        SizedBox(height: 50),
        Row(children: [
          Container(
              width: 200,
              color: Colors.amberAccent,
              child: const TextField(
                decoration: InputDecoration(enabled: true),
                style: TextStyle(color: Colors.red),
              ))
        ])
      ],
    );
  }
}
