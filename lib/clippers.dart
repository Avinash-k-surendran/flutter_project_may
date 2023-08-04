import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


void main(){
  runApp(MaterialApp(home: Clipwidgets(),));
}

class Clipwidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Clippers"),
    ),
    body: ListView(
      children: [
        ClipRRect(
          child:Align(
        heightFactor: .4,
      widthFactor: .4,

     child: Container(
          child: Image.network("https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
     ),
     )
        ),
         ClipRRect(
           borderRadius: BorderRadius.circular(300),
           child: Image.network("https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
         ),
        ClipOval(
          child: Image.network("https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60%27"),
        ),
        ClipOval(
          child: Image.network("https://images.unsplash.com/photo-1653699819323-e56ef35758a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDM5fDZzTVZqVExTa2VRfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60"),
        ),
        ClipPath(
          clipper: MessageClipper(),
          child: Container(
            height: 120,
            color: Colors.blue,
            child: Center(child: Text("Clipper"),),
          ),
        )
      ],
    ),
  );
  }
}
