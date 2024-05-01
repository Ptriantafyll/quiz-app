import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 187, 170, 212),
            Color.fromARGB(255, 74, 9, 226)
          ],
        ),
      ),
    );
  }
}
