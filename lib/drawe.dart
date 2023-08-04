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
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.orange,Colors.red])
            ),
          child: Drawer(
            child :  Container(
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[
                  Colors.orange,
                  Colors.red,
                ])
              ),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(image: DecorationImage(
               //       fit: BoxFit.cover,
                      image: AssetImage("assets/image/musthafa.png"))),
                  accountName: Text("AVINASH KS",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  accountEmail: const Text("aviavinashk@2002"),
                  currentAccountPicture: Image.network(""),
                      otherAccountsPictures: [
                    Image.asset("assets/image/kaka.png")
                  ],
                ),

                const ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                ),
                ListTile(
                  leading: Icon(Icons.leak_add_sharp),
                  title: Text("Leads"),
                ),
                ListTile(
                  leading: Icon(Icons.people_outline_sharp),
                  title: Text("Clients"),
                ),
    ListTile(
    leading: Icon(Icons.rocket_launch),
    title: Text("Projects"),
    ),
    ListTile(
    leading: Icon(Icons.emoji_people_outlined),
    title: Text("Patients"),
    ),
    ListTile(
    leading: Icon(Icons.subject_outlined),
    title: Text("Subscription"),
    ),
    ListTile(
    leading: Icon(Icons.payments),
    title: Text("Payments"),
    ),

    ListTile(
    leading: Icon(Icons.person),
    title: Text("user"),
    ),
    ListTile(
    leading: Icon(Icons.library_books_outlined),
    title: Text("Library"),
    )



    ],
            ),
          ),
        )
    )
        )
    );
  }
}
