import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onAnswerTap,
  });

  final String answerText;
  final void Function() onAnswerTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onAnswerTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 64, 19, 188),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
      child: Text(answerText),
    );
  }
}
