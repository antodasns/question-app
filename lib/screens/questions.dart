import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:questionservice/api/questionapi.dart';
import 'package:questionservice/model/questionmodel.dart';
import 'package:questionservice/state/questionnotifier.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  int nextqst=1;
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<QuestionNotifier>(context,listen:false).loadQuestionList(nextqst);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    QuestionNotifier questionNotifier = Provider.of<QuestionNotifier>(context, listen: false);
    var size=MediaQuery.of(context).size;
    for(Questions x in questionNotifier.questionList)
      for(Option y in x.options)

    return Stack(
      children: <Widget>[
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
            ),
          ),
        ),
        Center(
          child: Container(
              height: size.height * .90,
              width: size.width * .95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 17,
                    spreadRadius: -23,
                    color: Colors.white,
                  ),
                ],
              ),
              child: Padding(
                padding:EdgeInsets.all(20) ,
                child: Container(
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Question "+nextqst.toString()+" of 5",
                          style: GoogleFonts.notoSansKR(
                            textStyle: TextStyle(color: Colors.deepPurple,
                            decoration: TextDecoration.none),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(x.question,
                        style: GoogleFonts.notoSansKR(
                          textStyle: TextStyle(color: Colors.black,
                              decoration: TextDecoration.none),
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Material(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: (){
                              },
                              child:Column(
                                children: <Widget>[
                                  for(Option y in x.options)
                                  Padding(
                                    padding:EdgeInsets.fromLTRB(30, 15, 130, 15) ,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("A."+y.a,
                                        style: GoogleFonts.notoSansKR(
                                          textStyle: TextStyle(color: Colors.deepPurple,
                                              decoration: TextDecoration.none),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),),
                                    ),
                                  ),

                                ],
                              ),
                            )
                        ),
                      ),
                      Material(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: (){
                              },
                              child:Column(
                                children: <Widget>[
                                  Padding(
                                    padding:EdgeInsets.fromLTRB(30, 15, 130, 15) ,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("B."+y.b,
                                        style: GoogleFonts.notoSansKR(
                                          textStyle: TextStyle(color: Colors.deepPurple,
                                              decoration: TextDecoration.none),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                      Material(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: (){
                              },
                              child:Column(
                                children: <Widget>[
                                  Padding(
                                    padding:EdgeInsets.fromLTRB(30, 15, 130, 15) ,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("C."+y.c,
                                        style: GoogleFonts.notoSansKR(
                                          textStyle: TextStyle(color: Colors.deepPurple,
                                              decoration: TextDecoration.none),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                      Material(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: InkWell(
                              onTap: (){
                              },
                              child:Column(
                                children: <Widget>[
                                  Padding(
                                    padding:EdgeInsets.fromLTRB(30, 15, 130, 15) ,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("D."+y.d,
                                        style: GoogleFonts.notoSansKR(
                                          textStyle: TextStyle(color: Colors.deepPurple,
                                              decoration: TextDecoration.none),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FlatButton(
                          onPressed: () {
//                            Navigator.pushNamed(context, '/question');
                          setState(() {
                            nextqst=nextqst+1;
                            Provider.of<QuestionNotifier>(context,listen:false).loadQuestionList(nextqst);
                          });},
                          child: Text('NEXT',
                            style: GoogleFonts.notoSansKR(
                              textStyle: TextStyle(color: Colors.deepPurple,
                                  decoration: TextDecoration.none),
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
        ),
      ],
    );
  }
}
