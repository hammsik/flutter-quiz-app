import 'package:flutter/material.dart';
import 'package:my_quiz_app/answer_button.dart';
import 'package:my_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionPage extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;

  const QuestionPage({required this.onSelectAnswer, super.key});

  @override
  State<QuestionPage> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  var currentQuestionIdx = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIdx];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          currentQuestion.question,
          style: GoogleFonts.nanumMyeongjo(
            color: Colors.white,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        ...currentQuestion.getShuffuledAnswers().map(
              (item) => AnswerButton(
                answerString: item,
                onTap: () => answerQuestion(item),
              ),
            )
      ],
    );
  }
}
