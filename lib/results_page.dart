import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage(
      {super.key, required this.chosenAnswers, required this.onRestartQuizTap});

  final List<String> chosenAnswers;
  final void Function() onRestartQuizTap;

  @override
  State<ResultsPage> createState() {
    return _ResultsPageState();
  }
}

class _ResultsPageState extends State<ResultsPage> {
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < widget.chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': widget.chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctAnswers = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $correctAnswers out of $totalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSymmary(summaryData),
            const SizedBox(height: 30),
            FloatingActionButton.extended(
              onPressed: () {
                widget.onRestartQuizTap();
              },
              icon: const Icon(
                Icons.replay_outlined,
                color: Colors.white,
              ),
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
