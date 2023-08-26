import 'package:flutter/material.dart';
import 'package:vacab/Widgets/question_widget.dart';

import '../models/question.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> options = ["Profligate", "Burnish", "Bolster", "Allure"];
    Question dummyQuestion = new Question(
        imageLocation: "http://www.wordinfo.info/words/images/profligate-1.jpg",
        options: options,
        correctAnswer: "Profligate");
    return Scaffold(
      body: Center(
        child: QuestionWidget(currentQuestion: dummyQuestion),
      ),

    );
  }
}
