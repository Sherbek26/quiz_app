import 'package:flutter/material.dart';
import 'package:quiz_app/summary/question_identifier.dart';
import 'package:quiz_app/summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Container(
              margin: const EdgeInsets.only(bottom: 18),
              child: Row(children: [
                QuestionIdentifier(
                    isCorrectAnswer:
                        (data['choosen_answer'] == data['correct_answer']),
                    questionIndex: data['question_index'] as int),
                SummaryItem(
                  question: data['question'] as String,
                  choosenAnswer: data['choosen_answer'] as String,
                  correctAnswer: data['correct_answer'] as String,
                  isCorrectAnswer:
                      (data['choosen_answer'] == data['correct_answer']),
                )
              ]),
            );
          }).toList(),
        ),
      ),
    );
  }
}
