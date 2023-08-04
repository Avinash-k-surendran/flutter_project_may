import 'package:flutter/material.dart';
import 'package:flutter_project_may/List/ListView%20separator.dart';
import 'package:flutter_project_may/passing%20data%20between%20screen/product%20details.dart';

import 'dummydata.dart';


void main(){
  runApp(MaterialApp(
    home: BrandList(),
    debugShowCheckedModeBanner: false,

    /// Named routes used in navigator.pushNamed()

    routes: {
      "details":(context)  =>Productdetails(),
      "cart"   :(context)  =>ListView4(),

    },
  ));
}


class BrandList extends StatelessWidget {
  const BrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),

        //e ->each single map in the list
        // list.map->iterate all the data in the list
        //toList used to convert the map values to list

        children: product.map((e)  {
          return ListTile(
            leading:
            Image.asset(e["image"]),
            title: Text(e["name"]),
            onTap: ()=> gotodetails(context,e["id"]),
          );

        }).toList(),

      ),
    );
  }

  void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "details",);


  }
}