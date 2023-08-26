//This file contains the model for each question.
// Each question contains an image, list of strings for options, and then a correct answer.

class Question {
  final String imageLocation;
  final List<String> options;
  final String correctAnswer;

  Question({required this.imageLocation, required this.options, required this.correctAnswer});

}