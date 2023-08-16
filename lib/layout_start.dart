import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          color: const Color.fromARGB(127, 255, 255, 255), // transparent 부여 가능!
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.nanumMyeongjo(
            color: const Color.fromARGB(255, 208, 198, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton.icon(
          onPressed: switchPage,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 72, 167),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
