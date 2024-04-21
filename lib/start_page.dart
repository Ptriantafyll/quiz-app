import 'package:flutter/material.dart';
import 'package:quiz_app/styled_button.dart';
import 'package:quiz_app/styled_text.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 280,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 50),
        const StyledText('Learn flutter the fun way!', 28),
        const SizedBox(height: 50),
        StyledButton(startQuiz, 'Start Quiz', 15)
      ],
    );
  }
}
