import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Firstpage(),));
}
class Firstpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar:AppBar(backgroundColor:Colors.lightGreen,title:Icon(Icons.ac_unit)) ,
    );
  }
}
