import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: GradientContainer(
      gradientColors: [
        Color.fromARGB(255, 187, 170, 212),
        Color.fromARGB(255, 74, 9, 226)
      ],
    ),
  )));
}
