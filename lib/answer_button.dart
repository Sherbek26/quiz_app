import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 10, 3, 106),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text(answer)),
    );
  }
}
