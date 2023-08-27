import 'package:flutter/material.dart';
import 'package:vacab/Widgets/question_button_widget.dart';

import '../models/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question currentQuestion;

  QuestionWidget({Key? key, required this.currentQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Uri url = Uri(currentQuestion.imageLocation);
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
                    buttonText: currentQuestion.options.elementAt(0),
                    buttonFunction: () {}),
                SizedBox(width: 10,),
                QuestionButtonWidget(
                    buttonText: currentQuestion.options.elementAt(1),
                    buttonFunction: () {}),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuestionButtonWidget(
                    buttonText: currentQuestion.options.elementAt(2),
                    buttonFunction: () {}),
                SizedBox(
                  width: 10,
                ),
                QuestionButtonWidget(
                    buttonText: currentQuestion.options.elementAt(3),
                    buttonFunction: () {}),
              ],
            ),

          ],
        ),
      );
  }
}
