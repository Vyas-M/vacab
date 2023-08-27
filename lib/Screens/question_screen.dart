import 'package:flutter/material.dart';
import 'package:vacab/Screens/results_screen.dart';
import 'package:vacab/Widgets/question_button_widget.dart';
import 'package:vacab/Widgets/question_widget.dart';
import '../data.dart';

import '../models/question.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  int questionIndex = 0;
  int totalQp = 0;

  List<Question> questions = [];

  @override
  Widget build(BuildContext context) {
    final int totalQuestions = ModalRoute.of(context)!.settings.arguments as int;
    totalQp = totalQuestions;
    questions = returnQuestions(totalQuestions).cast<Question>();
    print(totalQp);

    return Scaffold(
      body: Container(
        color: Color(0xFFA49292),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionWidget(currentQuestion: questions.elementAt(questionIndex)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuestionButtonWidget(
                    buttonFunction: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    buttonText: "Exit",
                  ),
                  ElevatedButton(
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: goToNextQuestion,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF533636),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void goToNextQuestion() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex++;
      });
    } else {
      Navigator.pushNamed(context, '/results_screen');
    }
  }
}
