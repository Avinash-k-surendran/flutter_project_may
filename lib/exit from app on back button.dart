import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: SampleHome(),));
}

class SampleHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text("confirm exit ?????"),
          content: Text("DO you really want to exit !!!!"),
          actions: [
     //    TextButton(onPressed: () {
       //    Navigator.of(context).pop(true);
      //   },
    //     child: const Text("yes")),
        TextButton(onPressed: (){Navigator.of(context).pop(false);
        },
        child:const Text("NO")),
            TextButton(onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text("cancel")),
          ],
        );
      }
      );
    }
    return WillPopScope(onWillPop: showAlert, child: const Scaffold(
      body: Center(child: Text("press back button to exit"),
      ),
    ),
    );
  }
}
