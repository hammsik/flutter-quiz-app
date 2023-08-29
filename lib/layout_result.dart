import 'package:flutter/material.dart';
import 'package:my_quiz_app/data/questions.dart';
import 'package:my_quiz_app/question_summary.dart';

class ResultPage extends StatelessWidget {
  final List<String> chosenAnswers;
  final void Function() restart;

  const ResultPage({
    super.key,
    required this.chosenAnswers,
    required this.restart,
  });

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
    final summaryData = getSummary();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['correct_answer'] == data['chosen_answer'])
        .length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            'You answerd $numCorrectQuestions out of $numTotalQuestions correctly!'),
        const SizedBox(
          height: 30,
        ),
        QuestionSummary(summaryData),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: restart,
          child: const Text('Restart Quiz!',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
      ],
    );
  }
}
