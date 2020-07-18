import 'package:flutter/material.dart';

import 'screens/home.dart';



void main() {
  runApp(QuestionService());
}

class QuestionService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/homelist",
      routes: {
        "/homelist":(context) => home(),

      },
    );
  }
}



