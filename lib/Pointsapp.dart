import 'package:flutter/material.dart';

class PointApp extends StatefulWidget {
  const PointApp({super.key});

  @override
  State<PointApp> createState() => _PointAppState();
}

class _PointAppState extends State<PointApp> {
  int teamAPoints=0;
  int teamBPoints=0;
  String teamA="Team A";
  String teamB="Team B";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
       title: Text("Points App",style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Team A",style: TextStyle(color: Colors.black,fontSize: 32),),
                  Text("${teamAPoints}",style: TextStyle(color: Colors.black,fontSize: 160),),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      teamAPoints++;
                    });
                  },
                      child: Text("Add 1 Point",style: TextStyle(color: Colors.black,fontSize: 19),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                    side:  BorderSide(width: 0, color: Colors.transparent)),




                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      teamAPoints+=2;
                    });
                  },
                    child: Text("Add 2 Point",style: TextStyle(color: Colors.black,fontSize: 19),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        side:  BorderSide(width: 0, color: Colors.transparent)),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      teamAPoints+=3;
                    });
                  },
                    child: Text("Add 3 Point",style: TextStyle(color: Colors.black,fontSize: 19),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        side:  BorderSide(width: 0, color: Colors.transparent)),




                  ),
                  SizedBox(height: 10,),
                ],
              ),
               SizedBox(
                 height: 380,
                 child: VerticalDivider(
                   color: Colors.grey,
                   thickness: 1.5,
                 ),
               ),
              Column(
                children: [
                  Text("Team B",style: TextStyle(color: Colors.black,fontSize: 32),),
                  Text("${teamBPoints}",style: TextStyle(color: Colors.black,fontSize: 160),),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      teamBPoints++;
                    });
                  },
                    child: Text("Add 1 Point",style: TextStyle(color: Colors.black,fontSize: 19),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        side:  BorderSide(width: 0, color: Colors.transparent)),




                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      teamBPoints+=2;
                    });
                  },
                    child: Text("Add 2 Point",style: TextStyle(color: Colors.black,fontSize: 19),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        side:  BorderSide(width: 0, color: Colors.transparent)),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      teamBPoints+=3;
                    });
                  },
                    child: Text("Add 3 Point",style: TextStyle(color: Colors.black,fontSize: 19),),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        side:  BorderSide(width: 0, color: Colors.transparent)),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ],
          ),
          SizedBox(height: 80,),
          ElevatedButton(
            onPressed: (){

          setState(() {
             teamAPoints=0;
             teamBPoints=0;
          });
            },
            child: Text("Reset",style: TextStyle(color: Colors.black,fontSize: 19),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,

                side:  BorderSide(width: 0, color: Colors.transparent)),
          ),
        ],
      ),
    );
  }
}
