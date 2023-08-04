import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Expansion()));
}
class Expansion extends StatelessWidget{
  var colors = [Colors.red,Colors.greenAccent,Colors.cyanAccent];
  var name = ["red","greenAccent","cyanAccent"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Tile")),
   body: ExpansionTile(title: Text("Colors"),
   subtitle: Text("List of colors"),
     children: List.generate(5, (index) => ListTile(
         leading: CircleAvatar(backgroundColor:colors[index]),
     title: Text(name[index]),
     ))
   ),
    );
  }
}