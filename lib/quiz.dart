import 'package:flutter/material.dart';
import 'package:adv_flutter_quiz/questions_screen.dart';
import 'package:adv_flutter_quiz/start_screen.dart';

class QuizMain extends StatefulWidget {
  const QuizMain({super.key});

  @override
  State<QuizMain> createState() => _QuizMainState();
}

class _QuizMainState extends State<QuizMain> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(changeScreen);
    super.initState();
  }

  void changeScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 25, 77, 166),
              Color.fromARGB(255, 116, 158, 231)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
