import 'package:flutter/material.dart';
import 'package:vacab/Widgets/question_button_widget.dart';

import '../models/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question currentQuestion;

  final Function(String a, String b) calculateScore;
  QuestionWidget({Key? key, required this.currentQuestion, required this.calculateScore}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //Uri url = Uri(currentQuestion.imageLocation);
    List<String> tempOptions = List.from(currentQuestion.options);
    tempOptions.shuffle();
    //List<String> presentOptions = tempOptions.shuffle();
    return Container(
        color: Color(0xFFA49292),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(currentQuestion.imageLocation),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuestionButtonWidget(
                    buttonText: tempOptions[0],
                    buttonFunction: () {
                      calculateScore(tempOptions[0], currentQuestion.correctAnswer);
                    }),
                SizedBox(width: 10,),
                QuestionButtonWidget(
                    buttonText: tempOptions[1],
                    buttonFunction: () {
                      calculateScore(tempOptions[1], currentQuestion.correctAnswer);
                    }),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuestionButtonWidget(
                    buttonText: tempOptions[2],
                    buttonFunction: () {
                      calculateScore(tempOptions[2], currentQuestion.correctAnswer);
                    }),
                SizedBox(
                  width: 10,
                ),
                QuestionButtonWidget(
                    buttonText: tempOptions[3],
                    buttonFunction: () {
                      calculateScore(tempOptions[3], currentQuestion.correctAnswer);
                    }),
              ],
            ),

          ],
        ),
      );
  }
}
