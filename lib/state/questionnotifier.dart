import 'package:flutter/cupertino.dart';
import 'package:questionservice/api/questionapi.dart';
import 'package:questionservice/model/questionmodel.dart';

class QuestionNotifier with ChangeNotifier{
  List <Questions> _questionList = List<Questions>();

void loadQuestionList() async {
  loadQuestion().then((question){
    _questionList=question;
  });
  notifyListeners();
 }
  List <Questions> get questionList => _questionList;
}