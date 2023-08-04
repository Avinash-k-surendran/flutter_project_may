import 'package:flutter/material.dart';
import 'package:flutter_project_may/passing%20data%20between%20screen/dummydata.dart';

class Branddetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final products =product.firstWhere((element)=>element["id"]==id);
//comparing id from previous page with id from list and store the value from that id
    // to product which is Map<String dynamic>
  return Scaffold(
    appBar: AppBar(title: Text("My single product"),),
    body: Card(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(products["image"],
          height: 200,width: 200,
          ),
          Text(products["name"],
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
          ),
          Center(child: Text(products["description"])),
          Text("${products['price']}",
          style: TextStyle(fontSize: 20)
          ),
          Text("${products['rating']}",
              style: TextStyle(fontSize: 10)
          ),
        ],
      ),
    )
    ),
  );

  }
}
