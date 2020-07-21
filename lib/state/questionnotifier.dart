import 'package:flutter/cupertino.dart';
import 'package:questionservice/api/questionapi.dart';
import 'package:questionservice/model/questionmodel.dart';

class QuestionNotifier with ChangeNotifier{
  List <Questions> _questionList = List<Questions>();

void loadQuestionList(qst_id) async {
  loadQuestion(qst_id).then((question){
    _questionList=question;
  });
  notifyListeners();
 }
  List <Questions> get questionList => _questionList;
}