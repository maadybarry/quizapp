import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.changeScreen, {super.key});

  final void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn Flutter The Fun Way!',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: changeScreen,
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt_rounded),
          )
        ],
      ),
    );
  }
}
