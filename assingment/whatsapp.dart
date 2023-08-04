import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
        debugShowCheckedModeBanner: false,
        home:Whatsapp(),
    ),
  );
}



class Whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("whatsapp"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
      //    Icon(Icons.more_vert_outlined),
     //     SizedBox(width: 15,)
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
        body :  ListView(
          children: const [
         // Center(child:Text("CHATS")),
         // Card(
          //  elevation: 5,
          //  shadowColor: Colors.white,
             ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("assets/image/ex.png")),
              title: Text("Manikutty"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
           //       Icon(Icons.done),
                  Text("i love you "),
                ],
              ),
              trailing: Text("now"),
            ),

   //   Card(
   //     elevation: 5,
     //   shadowColor: Colors.white,
         ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("assets/image/college.png"),),
          title: Text("college group"),
          subtitle: Row(
            children: [
             // Icon(Icons.done_all),
              Text("tomorrow is your send off")
            ],
          ),
          trailing: Text("1/05/2023"),
        ),

            // Card(
            //   elevation: 5,
            //   shadowColor: Colors.white,
               ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/kiran.png")),
                title: Text("Kiran"),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all,color: Colors.blue,),
                    Text("da ittachi love you paranju kettu")
                  ],
                ),
                trailing: Text("5.48pm"),

              ),

            // Card(
            //   elevation: 5,
            //   shadowColor: Colors.white,
                ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/ayoob.png"),),
                title: Text("ayoob"),
                subtitle: Row(
                  children: [

                    Text("nee cheytho"),
                  ],
                ),
                trailing: Text("4.53pm"),
              ),
            //
            // Card(
            //   elevation: 5,
            //   shadowColor: Colors.white,
               ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/riyas.png"),),
                title: Text("Riyas"),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all),
                    Text("da")
                  ],
                ),
                trailing: Text("3.00pm"),
              ),

             ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/rohan.jpg"),),
                title: Text("Rohan"),
                subtitle: Row(
                  children: [
                  Icon(Icons.done),
                    Text("mwone scene"),
                  ],
                ),
                trailing: Icon(Icons.abc_rounded),
              ),

             ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/srj.png"),),
                title: Text("Sreeraj"),
                subtitle: Row(
                  children: [
                  Icon(Icons.done_all),
                    Text("da machaneee"),
                  ],
                ),
                trailing: Text("2.00"),
              ),
             ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/kaka.png"),),
                title: Text("Akash"),
                subtitle: Row(
                  children: [
                  // Icon(Icons.done_all,color: Colors.blueAccent),
                   Text("Typing....!"),
                  ],
                ),
                trailing: Text("4.00"),
              ),
             ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/musthafa.png"),),
                title: Text("Musthafa"),
                subtitle: Row(
                  children: [
                    Icon(Icons.done_all,color: Colors.blueAccent),
                    Text("nalle epozha pokune"),
                  ],
                ),
                trailing: Text("5.00"),
              ),
             ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/tenzorzz.png"),),
                title: Text("ubaid"),
                subtitle: Row(
                  children: [
                   // Icon(Icons.done_all,color: Colors.blueAccent),
                    Text("ayake nee"),
                  ],
                ),
                trailing: Text("7.00pm"),
              ),

          ],
        ),
    );
  }

}