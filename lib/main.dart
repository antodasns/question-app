import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questionservice/screens/preresult.dart';
import 'package:questionservice/screens/questions.dart';
import 'package:questionservice/screens/result.dart';
import 'package:questionservice/screens/home.dart';
import 'package:questionservice/state/questionnotifier.dart';



void main() => runApp(MultiProvider(
          providers:[
          ChangeNotifierProvider(create: (_) => QuestionNotifier()),
          ],
      child: QuestionService()));
class QuestionService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home":(context) => Home(),
        "/question":(context) => Question(),
        "/preresult":(context) => Preresult(),
        "/result":(context) => Result(),
      },
    );
  }
}



