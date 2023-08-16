import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerString;
  final Function() onTap;

  const AnswerButton(
      {required this.answerString, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 80, 0, 172),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(200),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
      ),
      onPressed: onTap,
      child: Text(
        answerString,
        textAlign: TextAlign.center,
      ),
    );
  }
}
