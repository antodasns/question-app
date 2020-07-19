import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 3.3;
    double cardHeight = MediaQuery.of(context).size.height / 4.6;
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            width: size.width,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          Column(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0,60,0,20),
                child: Text(
                  "Hi\nSelect a Question type",
                  style: TextStyle(fontSize:30.0 ,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.fromLTRB(20,30,10,20),
                  crossAxisCount: 2,
                  childAspectRatio: cardWidth / cardHeight,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    Container(
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
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/question');
                          },
                          child:Column(
                            children: <Widget>[
                              Padding(
                                padding:EdgeInsets.fromLTRB(20, 70, 20, 0) ,
                                child: Text("Maths",
                                  style: TextStyle(fontSize: 30),),
                              )
                            ],
                          ),
                        )
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
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
                        child: InkWell(
                          onTap: (){},
                          child:Column(
                            children: <Widget>[
                              Padding(
                                padding:EdgeInsets.fromLTRB(20, 70, 20, 0) ,
                                child: Text("Physics",
                                  style: TextStyle(fontSize: 30),),
                              )
                            ],
                          ),
                        )
                    ),Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
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
                        child: InkWell(
                          onTap: (){},
                          child:Column(
                            children: <Widget>[
                              Padding(
                                padding:EdgeInsets.fromLTRB(20, 70, 20, 0) ,
                                child: Text("Chemistry",
                                  style: TextStyle(fontSize: 28),),
                              )
                            ],
                          ),
                        )
                    ),Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
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
                        child: InkWell(
                          onTap: (){},
                          child:Column(
                            children: <Widget>[
                              Padding(
                                padding:EdgeInsets.fromLTRB(20, 70, 20, 0) ,
                                child: Text("Bilology",
                                  style: TextStyle(fontSize: 30),),
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
