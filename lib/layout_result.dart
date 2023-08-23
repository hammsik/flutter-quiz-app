import 'package:flutter/material.dart';
import 'package:my_quiz_app/data/questions.dart';
import 'package:my_quiz_app/question_summary.dart';

class ResultPage extends StatelessWidget {
  final List<String> chosenAnswers;

  const ResultPage({super.key, required this.chosenAnswers});

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < questions.length; i++) {
      summary.add(
        {
          'question_idx': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'chosen_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('You answerd X out of Y questions correctly!'),
        const SizedBox(
          height: 30,
        ),
        QuestionSummary(getSummary()),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Restart Quiz!'),
        ),
      ],
    );
  }
}
