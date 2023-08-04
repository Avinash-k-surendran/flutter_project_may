import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


//to perform event of gestures we use Gesture deterctor / inkwell
void main(){
  runApp(const MaterialApp(home: BottomSheet()));
}


class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
     child: GestureDetector(onLongPress: (){
       showSheet(context);

     },
       child:  Image.asset("assets/image/food-6oZblocMv7w-unsplash.jpg")),
    ),
  );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child:  const Column(
         mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
             // leading: Icon(Icons.confirmation_num_sharp),
              leading : FaIcon(FontAwesomeIcons.facebook,color: Colors.blueAccent,),
              title: Text("data"),
              textColor: Colors.cyanAccent,
            )
          ],
        ),
      );

    });
  }
}
