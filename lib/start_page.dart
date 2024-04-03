import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});


  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 280,),
        const SizedBox(height: 50),
        const StyledText('Learn flutter the fun way!')
        // Todo: add a button here
      ],
    );
  }
}