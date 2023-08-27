import 'package:flutter/material.dart';
import 'package:vacab/Screens/landing_screen.dart';
import 'package:vacab/Screens/question_screen.dart';
import 'package:vacab/Screens/results_screen.dart';
import 'package:vacab/Screens/select_questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LandingScreen(),
      routes: {
        '/home': (context) => LandingScreen(),
        '/question_select': (context) => SelectQuestionsScreen(),
        '/questions_screen': (context) => QuestionScreen(),
        '/results_screen': (context) => ResultsScreen(),
      },
    );

  }
}

