import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: ListView2(),
  )
  );
}

class ListView2 extends StatelessWidget {
  var name = [
    "kiran",
    "riyas",
    "ayoob",
    "nadheer",
    "musthafa",
    "sreeraj",
    "shibin",
    "ubaid",
    "rohan",
    "akash",
        "kiran",
    "riyas",
    "ayoob",
    "nadheer",
    "musthafa",
    "sreeraj",
    "shibin",
    "ubaid",
    "rohan",
    "akash"
  ];
  var images =[
    "assets/image/kiran.png",
    "assets/image/riyas.png",
    "assets/image/ayoob.png",
    "assets/icons/mango.png",
    "assets/image/musthafa.png",
    "assets/image/srj.png",
    "assets/icons/grapes.png",
    "assets/icons/bananas.png",
    "assets/image/rohan.jpg",
    "assets/image/kaka.png",
    "assets/image/kiran.png",
    "assets/image/riyas.png",
    "assets/image/ayoob.png",
    "assets/icons/mango.png",
    "assets/image/musthafa.png",
    "assets/image/srj.png",
    "assets/icons/grapes.png",
    "assets/icons/bananas.png",
    "assets/image/rohan.jpg",
    "assets/image/kaka.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Listview 2"),
     ), 
      body: ListView(
        children: List.generate(20, (index) =>  Card(
       //   child:Text("card $index"),
          color: Colors.brown,
          child: ListTile(
            leading: Image.asset(images[index]),
            title: Text(name[index]),
            subtitle: Text("Hello"),
            trailing: Text("11.30"),
          ),
        )),
      ),
    );
  }
}
