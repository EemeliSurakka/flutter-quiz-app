import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white
            )),
          const SizedBox(height: 30),
          Column(
            children: currentQuestion.answers.map((answer) => AnswerButton(
              answer: answer,
              onPressed: () {
                // Handle answer
              },
            )).toList(),
          ),
        ]));
  }
}
