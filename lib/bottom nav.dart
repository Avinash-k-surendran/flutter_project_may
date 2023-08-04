import 'package:flutter/material.dart';
import 'package:flutter_project_may/List/List%20view%20with%20List%20generate.dart';
import 'package:flutter_project_may/List/ListView%20builder.dart';
import 'package:flutter_project_may/login%20page.dart';
import 'package:flutter_project_may/splash%20screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  var screens = [
    ListView3(),
    ListView2(),
    LoginPage(),
    SplashPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          backgroundColor: Colors.green,
          currentIndex: index,
          selectedItemColor: Colors.yellow,
          // type: BottomNavigationBarType.fixed,
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.red,  // applicable for bottom navigation bar type shifting
                icon: Icon(Icons.contacts_sharp),
                label: "Contact"),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.add_box_rounded),
                label: "View"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home")
          ]),
      body: screens[index],
    );
  }
}