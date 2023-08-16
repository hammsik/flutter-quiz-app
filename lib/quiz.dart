import 'package:flutter/material.dart';
import 'package:my_quiz_app/data/questions.dart';
import 'package:my_quiz_app/layout_question.dart';
import 'package:my_quiz_app/layout_start.dart';
import 'package:my_quiz_app/layout_result.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activePage = 'start_page';

  void switchPage() {
    setState(() {
      activePage = 'question_page';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activePage = 'result_page';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget pageWidget = StartPage(switchPage);

    if (activePage == 'question_page') {
      pageWidget = QuestionPage(onSelectAnswer: chooseAnswer);
    } else if (activePage == 'result_page') {
      pageWidget = ResultPage(chosenAnswers: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 40),
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
          child: pageWidget,
        ),
      ),
    );
  }
}
