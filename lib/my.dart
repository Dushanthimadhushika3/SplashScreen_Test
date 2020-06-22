import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

//void main() => runApp(MyApp());


class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => new _MyScreenState();
}

//Customize Splash screen
class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 20,
        navigateAfterSeconds: new AfterSplash(),
        title: new Text("Welcome to my Splash Screen",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0
          ),),
        image: new Image.asset('assets/splashImage.png'),//Splash screen background image
        backgroundColor: Colors.purple,//Splash screen background color
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Ready"),
        loaderColor: Colors.white
    );
  }
}

//Loaded page after splash screen
class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Splash Screen Part 2"),
          automaticallyImplyLeading: false
      ),
      body: new Center(
        child: new Text("Happy Coding!",
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30.0
          ),),

      ),
    );
  }
}