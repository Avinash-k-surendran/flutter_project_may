import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: GridView2(),));
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        crossAxisSpacing: 40,
        mainAxisSpacing: 20,),
        itemBuilder: (context,Index){
          return Card(
            color: Colors.redAccent,
            child: Center(
              child: Text("user $Index",style: const TextStyle(fontSize: 20,color: Colors.blue),
              ),
            ),
          );
        }

    )

  );
  }
}
