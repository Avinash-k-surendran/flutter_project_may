import 'package:flutter/material.dart';

class Registerpage extends StatelessWidget{
 // const Registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text ("REGISTER page"),),
          body: Column(
            children: [
              Image.asset("assets/icons/Fa-Team-Fontawesome-Brands-FontAwesome-Brands-Battle-Net.512(1).png",height: 100,width: 100,),
            Padding(
                padding: EdgeInsets.all(13.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              hintText: "Firstname",
                helperText: "First name must be capital letter",
                labelText: "Firstname",
                prefixIcon: Icon(Icons.abc_outlined),
              ),
            ),
            ),
              Padding(
                padding: EdgeInsets.all(13.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "email id",
                    helperText: "enter the email.id",
                    labelText: "email.id is",
                    prefixIcon: Icon(Icons.abc_rounded),
                  ),
                ),
              ),
               const Padding(
                padding: EdgeInsets.only(left: 12,right: 12,bottom: 12),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password",
                    helperText: "password must contain 6 character",
                    labelText: "password",
                    prefixIcon: Icon(Icons.visibility_off_sharp),),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12,right: 12,bottom: 12),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "confirm password",
                    helperText: "Are you sure, this is your password",
                    labelText: "confirm password",
                    prefixIcon: Icon(Icons.visibility_off_outlined),),
                ),
              ),
              ElevatedButton(onPressed: (){}, child: const Text("register")),
            ],
          )
    );
  }
}