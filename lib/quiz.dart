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
  var activePage = 'start_page';

  void switchPage() {
    setState(() {
      activePage = 'question_page';
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
          child: activePage == 'start_page'
              ? StartPage(switchPage)
              : const QuestionPage(),
        ),
      ),
    );
  }
}
