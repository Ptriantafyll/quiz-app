import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('You answered X out of Y questions directly'),
            const SizedBox(height: 30),
            const Text('List of answers and questions...'),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
