import 'package:flutter/material.dart';
import 'package:questionservice/screens/questions.dart';
import 'package:questionservice/screens/result.dart';
import 'package:questionservice/screens/home.dart';



void main() {
  runApp(QuestionService());
}

class QuestionService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home":(context) => Home(),
        "/question":(context) => Question(),
        "/result":(context) => Result(),
      },
    );
  }
}



