import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:questionservice/model/questionmodel.dart';
import 'package:http/http.dart' as http;


//mok data

Future<String>loadQuestionFromAssets() async{
  return await rootBundle.loadString('assets/json/qst.json');
}

Future<List<Questions>> loadQuestion(subcat,qst_id) async{

  String url = 'http://10.0.2.2:5000/question/'+subcat+'/'+qst_id.toString();
  final response = await http.get(url);
  List<Questions> question = questionsFromJson(response.body);
  return question;
}

Future<http.Response> postOption(id,option) async {
  var url ='http://10.0.2.2:5000/question/selectedoption/';
  Map<String, dynamic> data = {
    "qstnid":id,
    "option":option
  };
  var body = json.encode(data);
  var response = await http.post(url,
      headers: { "accept": "application/json", "content-type": "application/json" },
      body: body
  );
  return response;
}



//Future<List<Questions>> loadQuestion() async{
//  String jsonString =await loadQuestionFromAssets();
////  final jsonResponse=json.decode(jsonString.toString());
//  List<Questions> question = questionsFromJson(jsonString);
//  return question;
//}

//Future<String> loadQuestion() async{
//  String url = 'http://10.0.2.2:5000/question/maths/1';
//  final response = await http.get(url);
////  String qstns  = json.decode(response.body);
//  String jsonString =await loadQuestionFromAssets();
////  print(response.body);
//  return response.body;
//}

