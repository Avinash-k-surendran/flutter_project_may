import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: ListView3()));
}

class ListView3 extends StatelessWidget {
  var name = [
    "kiran",
    "riyas",
    "ayoob",
    "nadheer",
    "musthafa",
  ];
  //const ListView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder"),),

      body: ListView.builder(
          itemCount:  5,
          itemBuilder: (context,index){
            return const Card(
              //color: Colors.brown,
                child: ListTile(
            //      leading: Image.asset("assets/icons/apple.png"),
                  title: Text("mikasa"),
                  subtitle: Text("Hello"),
                  trailing: Text("11.30"),
                ));

          }),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.message)),
    );
  }
}