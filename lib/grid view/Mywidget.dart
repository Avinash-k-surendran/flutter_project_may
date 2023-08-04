import 'package:flutter/material.dart';

///My widget (using refactory)

class Mywidget extends StatelessWidget {

  final Color? bgcolor; // for color
  final Image? image; // for image
  VoidCallback? onpress; //for button
  Widget? label; //for text
  AssetImage? bgimage;

  Mywidget(
      {this.bgcolor, required this.label, this.image, required this.onpress});

  @override
  Widget build(BuildContext context) {

// return Card(
//  color: bgcolor,
//   child: ListTile(
//     leading: image,
//     trailing: label,
//     onTap: onpress,
//   ),
// );
 return Container(
decoration: BoxDecoration(image: DecorationImage(image: AssetImage("$bgimage"))),
   child: ListTile(
     leading: image,
     trailing: label,
     onTap: onpress,
   ),
 );


  }
}
