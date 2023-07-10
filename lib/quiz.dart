import 'package:flutter/material.dart';
import 'package:my_quiz_app/layout_question.dart';
import 'package:my_quiz_app/layout_start.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late Widget activePage;

  @override
  void initState() {
    activePage = StartPage(switchPage);
    super.initState();
  }

  void switchPage() {
    setState(() {
      activePage = const QuestionPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 93, 206),
                Color.fromARGB(255, 0, 110, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activePage,
        ),
      ),
    );
  }
}
