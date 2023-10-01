import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TimeTextField extends StatefulWidget {
  const TimeTextField({super.key});

  @override
  State<TimeTextField> createState() => _TimeTextFieldState();
}

class _TimeTextFieldState extends State<TimeTextField> {
  final TextEditingController _timeController = TextEditingController();
  final TimeInputFormatter _timeInputFormatter = TimeInputFormatter();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: TextField(
        controller: _timeController,
        inputFormatters: [_timeInputFormatter],
        keyboardType: TextInputType.datetime,
        style: const TextStyle(fontSize: 30, color: Colors.white),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'HH:MM',
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

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

    if (cleanedText.length > 4) {
      cleanedText = cleanedText.substring(0, 4);
    }

    String formattedText = '';

    if (cleanedText.length >= 3) {
      formattedText =
          '${cleanedText.substring(0, 2)}:${cleanedText.substring(2)}';
      if (selectionIndex == 3) {
        selectionIndex++; // Move the cursor one position ahead
      }
    } else {
      formattedText = cleanedText;
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
