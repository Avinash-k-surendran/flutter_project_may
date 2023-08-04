import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview3(),));
}

class Gridview3 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.count(crossAxisCount: 4,
    mainAxisSpacing: 20,
        crossAxisSpacing: 30,

    children: List.generate(15, (index) => Container(
      height: 300,
     color: Colors.yellow,
     child: Column(
       children: [
         Icon(Icons.house),


       //  Image.asset("assets/image/rob-potter-JVePgf8IjWQ-unsplash.jpg"),
       //  Text("lion",style: TextStyle(color: Colors.yellow),),
       ],
     )
     // decoration: BoxDecoration(
       //   borderRadius: BorderRadius.circular(50)),
      //    child: Image.asset("assets/image/rob-potter-JVePgf8IjWQ-unsplash.jpg"),
        ),
    ),
    ),
  );
  }
}
