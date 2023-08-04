import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Gridview1(),));
}
class Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GridView(
      // gridDelegate:
      // SliverGridDelegateWithMaxCrossAxisExtent(
      //   maxCrossAxisExtent: 80),
       gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
        mainAxisSpacing: 10,
          crossAxisSpacing: 30,
        ),
      children: List.generate(10, (index) => Card(child: Center(
        child: Image.asset("assets/image/food-6oZblocMv7w-unsplash.jpg"),
      ),
      ),
      ),
    ),
    );
  }
}
