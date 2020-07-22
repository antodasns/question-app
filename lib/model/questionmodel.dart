// To parse this JSON data, do
//
//     final questions = questionsFromJson(jsonString);

import 'dart:convert';

List<Questions> questionsFromJson(String str) => List<Questions>.from(json.decode(str).map((x) => Questions.fromJson(x)));

String questionsToJson(List<Questions> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Questions {
  Questions({
    this.id,
    this.options,
    this.question,
  });

  int id;
  List<Option> options;
  String question;

  factory Questions.fromJson(Map<String, dynamic> json) => Questions(
    id: json["id"],
    options: List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
    question: json["question"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "options": List<dynamic>.from(options.map((x) => x.toJson())),
    "question": question,
  };
}

class Option {
  Option({
    this.a,
    this.b,
    this.c,
    this.d,
  });

  String a;
  String b;
  String c;
  String d;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
    a: json["a"],
    b: json["b"],
    c: json["c"],
    d: json["d"],
  );

  Map<String, dynamic> toJson() => {
    "a": a,
    "b": b,
    "c": c,
    "d": d,
  };
}




Answer answerFromJson(String str) => Answer.fromJson(json.decode(str));

String answerToJson(Answer data) => json.encode(data.toJson());

class Answer {
  Answer({
    this.qstnid,
    this.option,
  });

  int qstnid;
  String option;

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
    qstnid: json["qstnid"],
    option: json["option"],
  );

  Map<String, dynamic> toJson() => {
    "qstnid": qstnid,
    "option": option,
  };
}
