import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:questionservice/model/questionmodel.dart';
import 'package:http/http.dart' as http;

//mok data
Future<String>loadQuestionFromAssets() async{
  return await rootBundle.loadString('assets/json/qst.json');
}

Future<List<Questions>> loadQuestion() async{
  String jsonString =await loadQuestionFromAssets();
//  final jsonResponse=json.decode(jsonString.toString());
  List<Questions> question = questionsFromJson(jsonString);
  return question;
}


//Future<List<Questions>> loadQuestion() async{
//  String url = 'https://jsonplaceholder.typicode.com/photos';
//  final response = await http.get(url);
//  List<Questions> question = questionsFromJson(response.body);
//  print(response.body);
//  return question;
//}