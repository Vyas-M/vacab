import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({Key? key}) : super(key: key);

  late int score;

  @override
  Widget build(BuildContext context) {
    final Map<String, int> arguments = ModalRoute.of(context)!.settings.arguments as Map<String, int>;
    final score = arguments['score'];
    final totalQuestions = arguments['totalNumberOfQuestions'];

    return Scaffold(
      body: Container(
        color: Color(0xFFA49292),
        child: Center(
          child: Text("Your Score is:  $score / $totalQuestions "),
        ),
      ),
    );
  }
}
