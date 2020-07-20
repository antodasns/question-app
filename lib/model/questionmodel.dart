// To parse this JSON data, do
//
//     final questions = questionsFromJson(jsonString);

import 'dart:convert';

List<Questions> questionsFromJson(String str) => List<Questions>.from(json.decode(str).map((x) => Questions.fromJson(x)));

String questionsToJson(List<Questions> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Questions {
  Questions({
    this.options,
    this.question,
  });

  List<Option> options;
  String question;

  factory Questions.fromJson(Map<String, dynamic> json) => Questions(
    options: List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
    question: json["question"],
  );

  Map<String, dynamic> toJson() => {
    "options": List<dynamic>.from(options.map((x) => x.toJson())),
    "question": question,
  };
}

class Option {
  Option({
    this.a,
    this.b,
  });

  String a;
  String b;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
    a: json["a"],
    b: json["b"],
  );

  Map<String, dynamic> toJson() => {
    "a": a,
    "b": b,
  };
}
