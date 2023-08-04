import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: CSlider(),));
}

class CSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(title: Text("data"),),
  body: CarouselSlider(items: List.generate(10, (index) =>
  const Card(
    color: Colors.orange,
    child: Center(
      child: Icon(Icons.add_box_rounded,size: 40,),
    ),
  ),

  ),

   //  Container(
   //    decoration: const BoxDecoration(image: DecorationImage(
   //        fit: BoxFit.fill,
   //        image: NetworkImage("https://images.unsplash.com/photo-1688651139745-606898a43b52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHFQWXNEenZKT1ljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60")
   //    )),
   //  ),
   //  Container(
   //    decoration: const BoxDecoration(image: DecorationImage(
   //        fit: BoxFit.fill,
   //        image: NetworkImage("https://images.unsplash.com/photo-1688380692117-63178554d76d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDh8YWV1NnJMLWo2ZXd8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60")
   //    )),
   //  ),
   //  Container(
   //    decoration: BoxDecoration(image: DecorationImage(
   //        fit: BoxFit.fill,
   //        image: NetworkImage("https://images.unsplash.com/photo-1688818227217-eb1a12b684f6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDV8YWV1NnJMLWo2ZXd8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60")
   //    )),
   //  ),
   // Container(
   //   decoration: BoxDecoration(image: DecorationImage(
   //       fit: BoxFit.fill,
   //       image: NetworkImage("https://images.unsplash.com/photo-1688651139745-606898a43b52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHFQWXNEenZKT1ljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60")
   //   )),
   // ) ,
   //  Container(
   //    decoration: BoxDecoration(image: DecorationImage(
   //        fit: BoxFit.fill,
   //        image: NetworkImage("https://images.unsplash.com/photo-1688818227217-eb1a12b684f6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDV8YWV1NnJMLWo2ZXd8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60"))),
   //  )

      options: CarouselOptions(
          height: double.infinity,
        aspectRatio: 16/9,
        viewportFraction: .5,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayCurve: Curves.easeInOutCubicEmphasized,
        enlargeCenterPage: true,
        enlargeFactor: .3,
        scrollDirection: Axis.horizontal
      )),
  );
  }
}
