import 'package:flutter/material.dart';
import 'package:adv_flutter_quiz/questions_screen.dart';
import 'package:adv_flutter_quiz/start_screen.dart';

class QuizMain extends StatefulWidget {
  const QuizMain({super.key});

  @override
  State<QuizMain> createState() => _QuizMainState();
}

class _QuizMainState extends State<QuizMain> {
  var activeScreen = 'start-screen';

  void changeScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(changeScreen);

    if (activeScreen == 'questions-screen') {
      currentScreen = const QuestionsScreen();
    }

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
          child: currentScreen,
        ),
      ),
    );
  }
}
