// To parse this JSON data, do
//
//     final questions = questionsFromJson(jsonString);

import 'dart:convert';

List<Questions> questionsFromJson(String str) => List<Questions>.from(json.decode(str).map((x) => Questions.fromJson(x)));

String questionsToJson(List<Questions> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Questions {
  Questions({
    this.id,
    this.qcategory,
    this.question,
    this.correctoption,
    this.options,
  });

  String id;
  String qcategory;
  String question;
  String correctoption;
  List<String> options;

  factory Questions.fromJson(Map<String, dynamic> json) => Questions(
    id: json["id"],
    qcategory: json["qcategory"],
    question: json["question"],
    correctoption: json["correctoption"],
    options: List<String>.from(json["options"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "qcategory": qcategory,
    "question": question,
    "correctoption": correctoption,
    "options": List<dynamic>.from(options.map((x) => x)),
  };
}
