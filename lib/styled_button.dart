import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StyledButton extends StatelessWidget {
  const StyledButton(this.text, this.fontSize, {super.key});

  final String text;
  final double fontSize;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
        onPressed: () => {debugPrint("Starting quiz")},
        style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        icon: const Icon(Icons.arrow_right_alt),
        label: StyledText(text, fontSize));
  }
}
