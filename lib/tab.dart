
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(primarySwatch: Colors.teal) ,
    debugShowCheckedModeBanner: false,
    home: Tab(),));
}
class Tab extends StatelessWidget {
  const Tab({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.green,
        title: Text("whatsapp"),
      bottom: TabBar(tabs: [Icon(Icons.people),
      Text("chats"),
        Text("status"),
        Text("calls"),
      ]),
          actions: [
          Icon(Icons.camera_alt),
      SizedBox(width: 20),
      Icon(Icons.search),
      SizedBox(width: 20),
      //    Icon(Icons.more_vert_outlined),
      //    SizedBox(width: 15,)
      PopupMenuButton(itemBuilder: (context){
        return[
          PopupMenuItem(child: Text("Settings")),
          PopupMenuItem(child: Text("New group")),
          PopupMenuItem(child: Text("payment")),
          PopupMenuItem(child: Text("New broadcast")),
        ];
      }

      ),
      ],
      ),
      body: TabBarView(children: [
        Center(
          child: Text("community"),
        ),
        Center(
          child: Text("chats"),
        ),
        Center(
          child: Text("Status"),
        ),
        Center(
          child: Text("call"),
        )
      ])
    ),
    );


  }
}
