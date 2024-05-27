import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Question...'),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton(onPressed: () {}, child: const Text('Answer 1')),
        OutlinedButton(onPressed: () {}, child: const Text('Answer 2')),
        OutlinedButton(onPressed: () {}, child: const Text('Answer 3')),
      ]),
    );
  }
}
