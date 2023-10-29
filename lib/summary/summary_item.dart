import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
      {super.key,
      required this.question,
      required this.choosenAnswer,
      required this.correctAnswer,
      required this.isCorrectAnswer});

  final String question;
  final String choosenAnswer;
  final String correctAnswer;
  final bool isCorrectAnswer;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.only(left: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          question.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        Text(choosenAnswer.toString(),
            style: TextStyle(
              color: !isCorrectAnswer
                  ? const Color.fromARGB(255, 255, 82, 220)
                  : const Color.fromARGB(115, 59, 245, 210),
            )),
        Text(
          correctAnswer.toString(),
          style: const TextStyle(
            color: Color.fromARGB(115, 59, 245, 210),
          ),
        ),
      ]),
    ));
  }
}
