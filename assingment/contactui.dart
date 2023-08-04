import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Contacts()
    ),
  );
}

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Simple Contact List")),
      body :  ListView(
        children: const [
          Center(child:Text("Contacts")),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contacts.png")),
              title: Text("kiran shaji"),
              subtitle: Text("\9632587412"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contact red.png")),
              title: Text("Ayoob ibrahim"),
              subtitle: Text("\9365412872"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contacts.png")),
              title: Text("riyas mu"),
              subtitle: Text("\983214568"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contact red.png")),
              title: Text("nadheer pt"),
              subtitle: Text("\983214568"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contacts.png")),
              title: Text("Rohan Lj"),
              subtitle: Text("\9365486172"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contact red.png")),
              title: Text("sreeraj.m"),
              subtitle: Text("\9388486172"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contacts.png")),
              title: Text("musthafa"),
              subtitle: Text("\93645996172"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contact red.png")),
              title: Text("ubaid"),
              subtitle: Text("\9365474123"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contacts.png")),
              title: Text("akash ap"),
              subtitle: Text("\9312366172"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/contact red.png")),
              title: Text("NADHEER PT"),
              subtitle: Text("\9812365479"),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ),
        ],
      ),
    );
  }
}