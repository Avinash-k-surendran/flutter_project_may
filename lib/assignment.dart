import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Assignment(),
      ));
}
class Assignment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
     //   color: Colors.blueAccent,
        decoration:const BoxDecoration(color: Colors.cyan,
          gradient: LinearGradient(colors:[
            Colors.orange,
            Colors.pink,],
          begin: Alignment.bottomRight,
              end: Alignment.topLeft
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // Image.asset("assets/icons/assignment.jpg",height: 200,width: 200,),
           Image.asset("assets/icons/restaurant_562678.png",height: 250,width: 250,),
              Text("Fresh foods",
              style: GoogleFonts.tienne(fontSize: 40,color: Colors.lightGreenAccent),
              )
            ],
          ),
        ),
      ),

    );
  }

}