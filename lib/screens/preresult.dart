import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:questionservice/state/questionnotifier.dart';
class Preresult extends StatefulWidget {
  @override
  _PreresultState createState() => _PreresultState();
}

class _PreresultState extends State<Preresult> {
  void savedContent(BuildContext context)//popup box
  {
    var alertDialog = AlertDialog(
      backgroundColor:Colors.grey,

      content:Text("Loading Result...",
      ),
    );
    showDialog(
        context:context,
        builder:(BuildContext context)=>alertDialog
    );
  }
  void initState() {
    super.initState();
    Future.microtask(() {
      String subcat=Provider.of<QuestionNotifier>(context,listen:false).subject;
      Provider.of<QuestionNotifier>(context,listen:false).loadScore(subcat);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    String subcat=Provider.of<QuestionNotifier>(context,listen:false).subject;
    Provider.of<QuestionNotifier>(context,listen:false).loadScore(subcat);
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: Color(0xFFF5CEB8),
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),

            child: Text("HURRAY....\nYou have Completed the Test",
              style: GoogleFonts.notoSansKR(
                textStyle: TextStyle(color: Colors.black,
                    decoration: TextDecoration.none),
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),),
          ),

          FlatButton(
            onPressed: () {
              setState(() {
                 Provider.of<QuestionNotifier>(context,listen:false).loadScore(subcat);
                 savedContent(context);
                Future.delayed(Duration(seconds: 2),(){
                  return Navigator.pushNamed(context, '/result');

                });


              });

              },
            child: Text('Go To Results',
              style: GoogleFonts.notoSansKR(
                textStyle: TextStyle(color: Colors.deepPurple,
                    decoration: TextDecoration.none),
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

