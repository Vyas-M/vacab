import 'package:flutter/material.dart';

class QuestionButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function() buttonFunction;

  const QuestionButtonWidget(
      {super.key, required this.buttonText, required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonFunction,
      child: Text(buttonText, style: TextStyle(color: Colors.white),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF533636),
      ),
    );
  }
}
