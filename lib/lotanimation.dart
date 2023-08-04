import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: LotiieAnim(),));
}

class LotiieAnim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
      // child: Lottie.asset("assets/Animation/Anime.json")
       child: Lottie.network("https://lottie.host/08164c21-98f1-408e-b8cf-2e47a0872e80/6UwX0OP9AE.json"),
     ),
   );
  }
}


