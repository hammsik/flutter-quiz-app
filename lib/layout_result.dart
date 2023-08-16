import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final List<String> chosenAnswers;
  const ResultPage({super.key, required this.chosenAnswers});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('You answerd X out of Y questions correctly!'),
        const SizedBox(
          height: 30,
        ),
        const Text('List of answers and questions...'),
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
