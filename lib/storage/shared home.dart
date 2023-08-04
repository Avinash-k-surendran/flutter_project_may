import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/storage/login%20using%20shared%20preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../login page.dart';

void main(){
  runApp(MaterialApp(home: LoginPageShared(),));
}

class SharedHome extends StatefulWidget
{
    State<SharedHome> createState()=> _SharedHomeState();
   }


class _SharedHomeState extends State<SharedHome>
{
  late SharedPreferences preferences;
  late String username;


  @override
void initState(){
    fetchdata();
    super.initState();
  }
  void fetchdata() async{
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("uname")!;
  // password = preferences.getString("password")!;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SharedHome"),),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "welcome $username",
              style: TextStyle(fontSize: 30),
            ),
        ElevatedButton(onPressed: (){
          preferences.setBool('newuser', true);
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
     
        }, child: Text("Login"),),
    ]
    )
      ),
    );

  }
}
