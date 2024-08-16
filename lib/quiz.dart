import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
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
  String activeScreen = 'start-screen';
  Widget? screenWidget;
  
  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
    });


    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = activeScreen == 'start-screen' ? 'questions-screen' : 'start-screen';
    });
  }

  void resetQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    
    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    } else if(activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, resetQuiz: resetQuiz);
    }

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
              child: screenWidget),
        ));
  }
}
