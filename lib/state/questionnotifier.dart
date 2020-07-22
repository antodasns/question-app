import 'package:flutter/cupertino.dart';
import 'package:questionservice/api/questionapi.dart';
import 'package:questionservice/model/questionmodel.dart';

class QuestionNotifier with ChangeNotifier{
  List <Questions> _questionList = List<Questions>();
  String _subject;
  String _qbtn;
  int _selqstn;
  String _seloption;


void loadQuestionList(subcat,qst_id) async {
  await loadQuestion(subcat,qst_id).then((question){
     _questionList=question;
  });
  if (qst_id==5){
    _qbtn="RESULT";
  }
  else{
    _qbtn="NEXT";
  }
  _qbtn=qbtn;
  notifyListeners();
 }
 void loadSubject(subject) {
  _subject=subject;
  notifyListeners();
 }
void optionSelected(qstn,option){
  _selqstn=qstn;
  _seloption=option;
  notifyListeners();
  }
  List <Questions> get questionList => _questionList;
  String get subject => _subject;
  String get qbtn => _qbtn;
  int get selqstn => _selqstn;
  String get seloption => _seloption;
}