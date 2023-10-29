import 'package:flutter/material.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(143, 255, 255, 255),
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        const SizedBox(
          height: 28,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    ));
  }
}
