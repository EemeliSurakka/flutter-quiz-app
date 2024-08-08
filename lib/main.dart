import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5433FF),
                Color(0xFF20BDFF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
          )),
          child: const StartScreen()),
      ));
  }
}
