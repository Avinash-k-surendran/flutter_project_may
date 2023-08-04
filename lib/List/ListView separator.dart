import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView4()));
}

class ListView4 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("List Separator"),),
      body: ListView.separated(itemBuilder: (context,index){
       return const Card(
        child: Text("hello"),
        );
    },
      separatorBuilder: (context,index){
        if (index % 5 == 0){
      //    color.Colors
        }
        return const Divider(color: Colors.red,);
    },
      itemCount: 10)

    );
  }

}