import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryList;

  const QuestionSummary(this.summaryList, {super.key});

  Color getAnswerColor(Map<String, Object> summary) {
    if (summary['correct_answer'] == summary['chosen_answer']) {
      return const Color.fromARGB(255, 148, 255, 152);
    } else {
      return const Color.fromARGB(255, 255, 130, 121);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryList.map(
              (item) => Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1024),
                          color: getAnswerColor(item),
                        ),
                        child: Text(
                          ((item['question_idx'] as int) + 1).toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 12, bottom: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item['question'].toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(item['correct_answer'].toString()),
                              Text(
                                item['chosen_answer'].toString(),
                                style: TextStyle(
                                  color: getAnswerColor(item),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
