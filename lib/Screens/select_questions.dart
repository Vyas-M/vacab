import 'package:flutter/material.dart';
import 'package:vacab/Widgets/question_button_widget.dart';

import '../Widgets/heading_text.dart';

class SelectQuestionsScreen extends StatefulWidget {
  const SelectQuestionsScreen({Key? key}) : super(key: key);

  @override
  State<SelectQuestionsScreen> createState() => _SelectQuestionsScreenState();
}

class _SelectQuestionsScreenState extends State<SelectQuestionsScreen> {
  int numberOfQuestions = 0;
  void goToHomeScreen(BuildContext context) {
    Navigator.pop(context);
  }

  void setTotalQuestions(int n){
    print("Inside the function");
    numberOfQuestions = n;
    Navigator.pushNamed(context, '/questions_screen');
  }

  @override
  Widget build(BuildContext context) {
    int numberOfQuestions = 0;
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color(0xFFA49292),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadingText(text: "Select Number of Questions"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QuestionButtonWidget(
                          buttonText: "10", buttonFunction: () {
                            setTotalQuestions(10);
                      },),
                      SizedBox(
                        width: 20,
                      ),
                      QuestionButtonWidget(
                          buttonText: "15", buttonFunction: () {
                        setTotalQuestions(15);
                      },),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QuestionButtonWidget(
                          buttonText: "20", buttonFunction: () {
                        setTotalQuestions(20);
                      },),
                      SizedBox(
                        width: 20,
                      ),
                      QuestionButtonWidget(
                          buttonText: "25", buttonFunction: () {
                        setTotalQuestions(25);
                      },),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: QuestionButtonWidget(
                      buttonText: "Exit",
                      buttonFunction: () {
                        goToHomeScreen(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
