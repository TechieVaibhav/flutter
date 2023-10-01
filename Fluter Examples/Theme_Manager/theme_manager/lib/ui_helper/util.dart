import 'package:flutter/material.dart';

TextStyle myTextStyle30() {
  return const TextStyle(
      color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold);
}

TextStyle myTextStyle20() {
  return const TextStyle(
      color: Colors.lightBlue, fontSize: 20, fontWeight: FontWeight.bold);
}

TextStyle myTextStyle11(
    {double fontSize = 11, Color textColor = Colors.lightBlue}) {
  return TextStyle(
      color: textColor, fontSize: fontSize, fontWeight: FontWeight.bold);
}
