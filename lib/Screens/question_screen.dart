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
  int score = 0;

  //late final int numberOfQuestions;

  int questionIndex = 0;

  int totalQp = 0;

  late List<Question> questions = [];

  void scoreUpdate(String choosenAnswer, String correctAnswer) {
    // if (questionIndex < questions.length){
    //   if(choosenAnswer.toLowerCase() == correctAnswer.toLowerCase()){
    //     setState(() {
    //       questionIndex++;
    //       score++;
    //     });
    //   } else{
    //     questionIndex++;
    //   }
    // }
    if (choosenAnswer.toLowerCase() == correctAnswer.toLowerCase()) {
      setState(() {
        score++;
        if (questionIndex < questions.length - 1) {
          questionIndex++;
        } else {
          print(score);
          Navigator.pushNamed(context, '/results_screen', arguments: {"score": score, 'totalNumberOfQuestions': totalQp});
        }
      });
    } else {
      print(score);
      Navigator.pushNamed(context, '/results_screen', arguments: {"score": score, 'totalNumberOfQuestions': totalQp});
    }
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

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   //totalQp = ModalRoute.of(context)!.settings.arguments as int;
  //   //totalQp = totalQuestions;
  //
  //   totalQp = widget.numberOfQuestions;
  //   questions = returnQuestions(totalQp).cast<Question>();
  //   print(totalQp);
  // }

  @override
  Widget build(BuildContext context) {
    final int totalQuestions =
        ModalRoute.of(context)!.settings.arguments as int;
    totalQp = totalQuestions;
    questions = returnQuestions(totalQuestions).cast<Question>();
    print(totalQp);

    return Scaffold(
      body: Container(
        color: Color(0xFFA49292),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionWidget(
                currentQuestion: questions.elementAt(questionIndex),
                calculateScore: scoreUpdate),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuestionButtonWidget(
                    buttonFunction: () {
                      questions.clear();
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
}
