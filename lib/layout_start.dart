import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final void Function() switchPage;

  const StartPage(this.switchPage, {super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(255, 255, 255, 255), // transparent 부여 가능!
        ),
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 200,
        //   ),
        // ),
        Container(
          margin: const EdgeInsets.only(top: 50, bottom: 50),
          child: const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        ElevatedButton.icon(
          onPressed: switchPage,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 72, 167),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
