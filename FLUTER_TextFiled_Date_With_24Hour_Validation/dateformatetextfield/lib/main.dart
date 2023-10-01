import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Input Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyTimeInputScreen(),
    );
  }
}

class MyTimeInputScreen extends StatefulWidget {
  const MyTimeInputScreen({super.key});

  @override
  MyTimeInputScreenState createState() {
    return MyTimeInputScreenState();
  }
}

class MyTimeInputScreenState extends State<MyTimeInputScreen> {
  final TextEditingController _timeController = TextEditingController();
  final TimeInputFormatter _timeInputFormatter = TimeInputFormatter();

  @override
  void initState() {
    super.initState();
    _timeController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Input Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _timeController,
              inputFormatters: [_timeInputFormatter],
              keyboardType: TextInputType.datetime,
              decoration:
                  const InputDecoration(labelText: 'Enter time (HH:MM)'),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;
    int selectionIndex = newValue.selection.end;

    if (text.isEmpty) {
      return const TextEditingValue();
    }

    // Remove non-digit characters
    String cleanedText = text.replaceAll(RegExp(r'[^0-9]'), '');

    String formattedText = '';

    if (cleanedText.isNotEmpty) {
      String hoursText = cleanedText.substring(0, min(2, cleanedText.length));
      int hours = int.tryParse(hoursText) ?? 0;

      // Ensure the first two digits are less than 24
      if (hours > 23) {
        hours = 23;
        hoursText = '23';
      }

      if (cleanedText.length > 2) {
        String minutesText =
            cleanedText.substring(2, min(4, cleanedText.length));
        int minutes = int.tryParse(minutesText) ?? 0;

        // Ensure the last two digits are less than 60
        if (minutes > 59) {
          minutes = 59;
          minutesText = '59';
        }

        formattedText = '$hoursText:$minutesText';
      } else {
        formattedText = hoursText;
      }

      if (selectionIndex == 3 || selectionIndex == 6) {
        selectionIndex++; // Move the cursor one position ahead
      }
    }

    selectionIndex = formattedText.length < selectionIndex
        ? formattedText.length
        : selectionIndex;

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
