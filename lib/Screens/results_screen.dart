import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFA49292),
        child: Center(
          child: Text("Welcome to the results Screen"),
        ),
      ),
    );
  }
}
