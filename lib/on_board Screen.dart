import 'package:flutter/material.dart';
import 'package:flutter_project_may/List/ListView%20builder.dart';
import 'package:flutter_project_may/List/ListView%20separator.dart';
import 'package:flutter_project_may/splash%20screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
void main(){
  runApp(MaterialApp(home: OnBoardingEx(),));
}

class OnBoardingEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
        fullScreen: false,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        imagePadding: EdgeInsets.all(20),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.deepOrange,
              Colors.red,
              Colors.redAccent
            ], begin: Alignment.topRight, end: Alignment.bottomLeft)));

    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          image: Align(
            // to place the widget at a desired position
            alignment: Alignment.topCenter,
            child: Image.asset("assets/icons/acer.png"),
          ),
          title: "First Page",
          body:
          "With Microsoft 365 for families, you can create, organize, and collaborate, all in one place",
        ),
        PageViewModel(
            decoration: const PageDecoration(
                fullScreen: true,
                titleTextStyle: TextStyle(
                    color: Colors.purple,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                bodyTextStyle: TextStyle(fontSize: 18, color: Colors.redAccent),
                imagePadding: EdgeInsets.all(20),
                boxDecoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food-6oZblocMv7w-unsplash.jpg")))),
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/icons/acer.png"),
            ),
            title: "SecondPage",
            body:
            "With Microsoft 365 for families, you can create, organize, and collaborate, all in one place"),
        PageViewModel(
            decoration: pageDecoration,
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/icons/acer.png"),
            ),
            title: "Third Page",
            body:
            "With Microsoft 365 for families, you can create, organize, and collaborate, all in one place")
      ],
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ListView4())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SplashPage())),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: Text("Next"),
      done: Text("continue"),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Colors.black12,
        activeSize: Size(25, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))
        )
      ),
    );
  }
}