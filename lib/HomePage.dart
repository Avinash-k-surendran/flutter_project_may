import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor:Colors.orange,
        title: Text("MY HOME"),
      actions: [
        Icon(Icons.camera_alt),
        SizedBox(width: 30),
        Icon(Icons.search),
        SizedBox(width: 20),
        PopupMenuButton(itemBuilder: (context){
          return[
            PopupMenuItem(child: Text("Settings")),
           PopupMenuItem(child: Text("New group")),
           PopupMenuItem(child: Text("payment")),
           PopupMenuItem(child: Text("New broadcast")),
          ];
        }

        ),
        ]
      ),
        body :  ListView(
        children: const [
          Center(child:Text("FRUITS")),
          Card(
            color: Colors.lightBlue,
            elevation: 5,
            shadowColor: Colors.red,
        child:  ListTile(
         leading:CircleAvatar(backgroundImage: AssetImage("assets/icons/apple.webp")),
          title: Text("APPLE"),
            subtitle: Text("\$200"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children : [
                Icon(Icons.favorite,),
                SizedBox(width: 20),
                Icon(Icons.shopping_cart),
              ]
            )
          ),
          ),

      Card(
        color: Colors.lightBlue,
        elevation: 5,
        shadowColor: Colors.red,
         child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/bananas.png",)),
          title: Text("banana"),
            subtitle: Text("\$100",),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
               children: [
                 Icon(Icons.favorite),
                 SizedBox(width: 20),
                 Icon(Icons.shopping_cart),
               ],
            ),
          ),
          ),
      Card(
        color: Colors.lightBlue,
        elevation: 5,
        shadowColor: Colors.red,
            child: ListTile(
          leading :CircleAvatar(backgroundImage:AssetImage("assets/icons/grapes.png")),
          title: Text("grapes"),
          subtitle: Text("\$150"),

          trailing: Row(
            mainAxisSize: MainAxisSize.min,
           children: [
             Icon(Icons.favorite),
             SizedBox(width: 20),
             Icon(Icons.shopping_cart),
           ],
          ),
          ),
          ),
   Card(
    color: Colors.lightBlue,
   elevation: 5,
   shadowColor: Colors.red,
    child: ListTile(
       leading :CircleAvatar(backgroundImage:AssetImage("assets/icons/mango.png")),
    title: Text("mango"),
    subtitle: Text("\$100"),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.favorite),
        SizedBox(width: 20),
        Icon(Icons.shopping_cart),
      ],
    )
    ),
    ),

        ],
        ),
    );

  }
}