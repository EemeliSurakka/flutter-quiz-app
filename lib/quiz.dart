import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  
  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
    });
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }


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
              child: activeScreen),
        ));
  }
}
