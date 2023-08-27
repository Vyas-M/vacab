import 'package:vacab/models/question.dart';

List<String> all_possible_options = [
  "Bedizen",
  "Profligate",
  "Abdicate",
  "Abjure",
  "Admonish",
  "Aggrandize",
  "Appease",
  "Banter",
  "Beatify",
  "Belie"
];

List<String> returnOptions(String correctAns) {
  List<String> options = [];
  options.clear();
  options.add(correctAns);
  List<String> allOptions = List.from(all_possible_options);
  allOptions.remove(correctAns);
  allOptions.shuffle();
  options.addAll(allOptions.take(3));
  return options;
}

List<Question> allQuestions = [
  Question(
    imageLocation:
        "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/Bedizen.jpg?alt=media&token=7fdc3e0b-167b-458f-bd2b-debfaad44dd2",
    options: returnOptions("Bedizen"),
    correctAnswer: "Bedizen",
  ),
  Question(
    imageLocation:
    "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/abdicate.jpeg?alt=media&token=f8d4f356-2c95-445e-b81e-c41a662817d9",
    options: returnOptions("Abdicate"),
    correctAnswer: "Abdicate",
  ),
  Question(
    imageLocation:
    "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/abjure.jpeg?alt=media&token=12f7aa48-f18e-4f50-9463-33b4281ef699",
    options: returnOptions("Abjure"),
    correctAnswer: "Abjure",
  ),
  Question(
    imageLocation:
    "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/admonish.png?alt=media&token=c98425c2-572f-4108-b4b5-bad3025a9602",
    correctAnswer: "Admonish",
    options: returnOptions("Admonish"),
  ),
  Question(
    imageLocation:
    "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/aggrandize.jpeg?alt=media&token=90aa9235-9f21-4296-9428-8f017486ec46",
    options: returnOptions("Aggrandize"),
    correctAnswer: "Aggrandize",
  ),Question(
    imageLocation:
    "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/appease.jpg?alt=media&token=df5168c8-2719-4b3c-869e-6d87da2b2b3f",
    options: returnOptions("Appease"),
    correctAnswer: "Appease",
  ),
  Question(
    imageLocation:
    "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/banter.png?alt=media&token=0fe2be0d-18b7-495a-a74d-28cec8af23a8",
    options: returnOptions("Banter"),
    correctAnswer: "Banter",
  ),
  Question(
    imageLocation:
    "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/beatify.jpg?alt=media&token=a6f99bde-0490-4765-8bae-6ef5a54887bc",
    options: returnOptions("Beatify"),
    correctAnswer: "Beatify",
  ),
  Question(
    imageLocation:
    "https://firebasestorage.googleapis.com/v0/b/vacab-c8d7d.appspot.com/o/belie.jpg?alt=media&token=f072a213-c7bd-4cda-874d-c5f31aaf20db",
    options: returnOptions("Belie"),
    correctAnswer: "Belie",
  ),
];

List<Question> returnQuestions(int numberOfQuestions){
  List<Question> suffledQuestions = List.from(allQuestions);
  suffledQuestions.shuffle();
  List<Question> sendQuestions = [];
  sendQuestions.addAll(suffledQuestions.take(numberOfQuestions));
  for (Question i in sendQuestions){
    print(i.correctAnswer);
  }
  return sendQuestions;
}
