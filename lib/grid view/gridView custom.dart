import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview4(),
  ));
}

class Gridview4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,crossAxisSpacing: 20,mainAxisSpacing: 20),
      //  childrenDelegate: childrenDelegate),
    //  childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(child: Text("hello"),)),
 childrenDelegate: SliverChildListDelegate(
     List.generate(10, (index) => Card(child: Text("Avinash"),))),
  ),
  );
  }
}
