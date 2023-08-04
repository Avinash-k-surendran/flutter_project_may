import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(home: DrawerEx(),));
}


class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar:  AppBar(
    title: Text("my drawer"),
  ),
  drawer: Theme(data: Theme.of(context).copyWith(canvasColor: Colors.purpleAccent),
      child: Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
    decoration: BoxDecoration(image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/image/musthafa.png"))),
    accountName: Text("AVINASH KS",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
            accountEmail: const Text("aviavinashk@2002"),
        currentAccountPicture: Image.asset("assets/image/rob-potter-JVePgf8IjWQ-unsplash.jpg"),
        otherAccountsPictures: [
          Image.asset("assets/image/kaka.png")
        ],
        ),

        const ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.menu),
          title: Text("menu"),
        ),
        ListTile(
          leading: Icon(Icons.more_vert_outlined),
          title: Text("Settings"),
        )
      ],
    ),
  ),
    )
  );
  }
}
