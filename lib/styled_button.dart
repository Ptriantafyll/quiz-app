import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StyledButton extends StatelessWidget {
  const StyledButton(this.startQuiz, this.text, this.fontSize, {super.key});

  final void Function() startQuiz;
  final String text;
  final double fontSize;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
        onPressed: startQuiz,
        style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        icon: const Icon(Icons.arrow_right_alt),
        label: StyledText(text, fontSize));
  }
}
