import 'package:flutter/material.dart';
import 'package:vacab/Widgets/heading_text.dart';
import 'package:vacab/Widgets/question_button_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Color background = Color(0xA49292);
    return Scaffold(
      body: Container(
        color: Color(0xFFA49292),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeadingText(text: "VACAB MASTER"),
              SizedBox(
                height: 30,
              ),
              Image.asset("assets/images/student.png"),
              SizedBox(
                height: 30,
              ),
              QuestionButtonWidget(
                buttonText: "Start Quiz",
                buttonFunction: () {
                  //Temp nothing is executed
                  Navigator.pushNamed(context, '/question_select');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
