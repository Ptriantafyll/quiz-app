import 'package:flutter/widgets.dart';
import 'package:quiz_app/questions_page.dart';
import 'package:quiz_app/start_page.dart';
import 'package:flutter/material.dart';

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
  Widget activePage = const StartPage();

  void switchPage() {
    setState(() {
      activePage = const QuestionsPage();
    });
  } 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: activePage),
    );
  }
}