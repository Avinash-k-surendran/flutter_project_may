import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1601375863404-5b912f4536df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dmlvbGlufGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60"))),
            ),
            const Positioned(
                top:20,
                left: 30,
                child: Text("Violen is best", style: TextStyle(fontSize: 30,color: Colors.white),)),
            Positioned(
              right: 50,
              bottom: 30,
              child: Container(
                height: 50,
                width: 100,
                child: Text('Rating 4',style: TextStyle(fontSize: 25,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}