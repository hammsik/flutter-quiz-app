import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryList;

  const QuestionSummary(this.summaryList, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryList.map(
              (item) => Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 80, 185, 255),
                            Color.fromARGB(255, 232, 116, 255),
                            Color.fromARGB(255, 131, 110, 255)
                          ]),
                    ),
                    child: Row(
                      children: [
                        Text(((item['question_idx'] as int) + 1).toString()),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(item['question'].toString()),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(item['correct_answer'].toString()),
                              Text(item['chosen_answer'].toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
