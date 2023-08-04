import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridview5(),
  ));
}
class Gridview5 extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: GridView.extent(maxCrossAxisExtent: 70,
   children: List.generate(10, (index) => Card(
     child: Icon(Icons.account_balance,size: 30,),
   ),
   ),
   ),
 );
  }
}
