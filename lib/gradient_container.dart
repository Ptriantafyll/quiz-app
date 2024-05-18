import 'package:flutter/widgets.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_page.dart';
import 'package:quiz_app/start_page.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/results_page.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key, required this.gradientColors});

  final List<Color> gradientColors;

  @override
  State<StatefulWidget> createState() {
    return _GradientContainerState();
  }
}

class _GradientContainerState extends State<GradientContainer> {
  List<String> selectedAnswers = [];
  String activePage = 'start-screen';

  void switchPage() {
    setState(() {
      activePage = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activePage = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    selectedAnswers = [];
    setState(() {
      activePage = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget pageWidget = StartPage(switchPage);

    if (activePage == 'start-screen') {
      pageWidget = StartPage(switchPage);
    } else if (activePage == 'questions-screen') {
      pageWidget = QuestionsPage(
        onSelectAnswer: chooseAnswer,
      );
    } else if (activePage == 'results-screen') {
      pageWidget = ResultsPage(
        chosenAnswers: selectedAnswers,
        onRestartQuizTap: restartQuiz,
      );
    }

    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.gradientColors,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(child: pageWidget));
  }
}
