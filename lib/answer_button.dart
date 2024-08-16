import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final VoidCallback onPressed;

  const AnswerButton({
    required this.answer,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      ),
      child: Text(answer, textAlign: TextAlign.center),
    );
  }
}