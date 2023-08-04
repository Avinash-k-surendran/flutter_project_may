import 'package:flutter/material.dart';
import 'package:flutter_project_may/login%20page.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){                                   // to run a program
 runApp(                                       //to attach the widget tree to the ui
     MaterialApp(                              //default theme of our app (multiplatform support)
       debugShowCheckedModeBanner: false,      //to remove debug badge
   home: LoginPage(), //initial screen of our app,( home must be a widget it may be stateless / statefull)
     ));
}

class Firstpage extends StatelessWidget{   //stateless mean firstpage donot undergo any state change
  @override
  Widget build(BuildContext context) {   // to create a widget tree (build context -> to monitor the widgets in the widget tree
    return Scaffold(
      //   backgroundColor: Colors.blue, // to set a single color to the entire screen
     /* appBar: AppBar(
        centerTitle: true,//to set a single color to the entire
         title: const Text("My Sample Project",style: TextStyle(fontSize: 20,color: Colors.indigo),),
    ),*/

        body :  Container(
        ///  color: Colors.greenAccent,   // to set a single color to the entire screen
          decoration: const BoxDecoration(
        //      image: DecorationImage(          //to set an image as screen background
          //      fit:BoxFit.fill,        //to fit the image to entire screen
              //    image: NetworkImage("https://images.unsplash.com/photo-1624995513293-275224d3a950?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDM5fEJuLURqcmNCcndvfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60"))),
      //  image: AssetImage("assets/image/rob-potter-JVePgf8IjWQ-unsplash.jpg")
          gradient: LinearGradient(
         //     stops: [.3,.4,.5],
              colors: [
            Colors.blueAccent,
            Colors.black,
            Colors.red
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft
          )
          ),
        child : Center(
        child : Column(                                  //for column children will place from top left to bottom left
          mainAxisAlignment: MainAxisAlignment.center,  //to move the children to center of coloumn
        children : [
    //      Icon(Icons.thumb_up_alt_outlined,color : Colors.red,size: 60,),
       Image.asset("assets/icons/Fa-Team-Fontawesome-Brands-FontAwesome-Brands-Battle-Net.512(1).png",height: 220,width: 1050,),
         Image.network("https://images.unsplash.com/photo-1665886262778-f5e11a7faef0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fEJuLURqcmNCcndvfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60",height: 200, width: 200,),
        Text(
          "MY APPLICATION",
           //style: TextStyle(fontSize: 40,color: Colors.brown,fontWeight:FontWeight.bold ),)
          style: GoogleFonts.pacifico(fontSize: 20,color: Colors.deepOrangeAccent),
        )
        ]
        )
      )
    )
    );
  }
}