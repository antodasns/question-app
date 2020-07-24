import 'package:flutter/material.dart';
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
  void savedContent(BuildContext context)//popup box
  {
    var alertDialog = AlertDialog(
      backgroundColor:Colors.grey,
      title:Text("Test Completed",
      ),
      content:Text("You're a smart cookie.",
      ),
    );
    showDialog(
        context:context,
        builder:(BuildContext context)=>alertDialog
    );
  }
  int nextqst=1;
  int qcount=1;
  Color acolor;
  Color bcolor;
  Color ccolor;
  Color dcolor;
  void initState() {
    super.initState();

    acolor = Colors.white;
    bcolor = Colors.white;
    ccolor = Colors.white;
    dcolor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    QuestionNotifier questionNotifier = Provider.of<QuestionNotifier>(context);
    bool isButtonPressed = false;
    var size=MediaQuery.of(context).size;
    for(Questions x in questionNotifier.questionList)
    for(Questions x in questionNotifier.questionList)
      for(Option y in x.options) {
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
                        child: Text("Question "+qcount.toString()+" of 5",
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
                              color: acolor,
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
                                Provider.of<QuestionNotifier>(context,listen:false).optionSelected(x.id,"a");
                                setState(() {
                                  acolor = Colors.lightBlueAccent;
                                  bcolor = Colors.white;
                                  ccolor = Colors.white;
                                  dcolor = Colors.white;
                                });

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
                              color: bcolor,
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
                                Provider.of<QuestionNotifier>(context,listen:false).optionSelected(x.id,"b");
                                setState(() {
                                  bcolor = Colors.lightBlueAccent;
                                  acolor = Colors.white;
                                  ccolor = Colors.white;
                                  dcolor = Colors.white;
                                });
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
                              color: ccolor,
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
                                Provider.of<QuestionNotifier>(context,listen:false).optionSelected(x.id,"c");
                                setState(() {
                                  ccolor = Colors.lightBlueAccent;
                                  acolor = Colors.white;
                                  bcolor = Colors.white;
                                  dcolor = Colors.white;
                                });
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
                              color: dcolor,
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
                                Provider.of<QuestionNotifier>(context,listen:false).optionSelected(x.id,"d");
                                setState(() {
                                  dcolor = Colors.lightBlueAccent;
                                  acolor = Colors.white;
                                  ccolor = Colors.white;
                                  bcolor = Colors.white;
                                });
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
                          setState(() {
                            nextqst=nextqst+1;
                            qcount=qcount+1;
                            if (qcount>5){
                              qcount=5;
                            }
                            acolor = Colors.white;
                            bcolor = Colors.white;
                            ccolor = Colors.white;
                            dcolor = Colors.white;
                            int selqstn=Provider.of<QuestionNotifier>(context,listen:false).selqstn;
                            String seloption=Provider.of<QuestionNotifier>(context,listen:false).seloption;

                            addoption(selqstn,seloption);

                            String subcat=Provider.of<QuestionNotifier>(context,listen:false).subject;


                            if (nextqst==6){

                              addoption(selqstn,seloption);
                              Provider.of<QuestionNotifier>(context,listen:false).postoptions();
                              Provider.of<QuestionNotifier>(context,listen:false).loadScore(subcat);
                              savedContent(context);
                              Future.delayed(Duration(seconds: 3),(){
                                return Navigator.pushReplacementNamed(context, '/result');
                              });



                            }
                            else{
                              Provider.of<QuestionNotifier>(context,listen:false).loadQuestionList(subcat,nextqst);
                            }
                          });
                          },
                          child: Text(Provider.of<QuestionNotifier>(context,listen:false).qbtn,
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
}
