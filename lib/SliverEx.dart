import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: SliverEx(),));
}

class SliverEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: false,
          title: const Text("Sliver appbar"),
          bottom: AppBar(
            elevation: 0,
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.grey,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "search here",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt),
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: 100,
                (context, index) => Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  height: 80,
                  child: Text("hello $index"),
        ))),
        
      ],
    ) ,
  );
  }
}
