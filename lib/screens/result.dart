import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
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
        mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
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
            child: Text("Total Score: 12/20",
              style: GoogleFonts.notoSansKR(
              textStyle: TextStyle(color: Colors.deepPurple,
                  decoration: TextDecoration.none),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),),
          ),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
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
            child: Text("Previous Score: 12/20",
              style: GoogleFonts.notoSansKR(
              textStyle: TextStyle(color: Colors.deepPurple,
                  decoration: TextDecoration.none),
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),),
          ),

          FlatButton(
            onPressed: () {Navigator.pushNamed(context, '/home');},
            child: Text('TEST AGAIN',
              style: GoogleFonts.notoSansKR(
                textStyle: TextStyle(color: Colors.deepPurple,
                    decoration: TextDecoration.none),
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
