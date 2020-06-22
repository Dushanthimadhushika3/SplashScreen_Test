import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical Center',
      initialRoute: '/',
      routes: {
        // If you're using navigation routes, Flutter needs a base route.
        // We're going to change this route once we're ready with
        // implementation of HomeScreen.

        '/': (context) => MyScreen(),
        //'/home': (context) => HomeScreen(),
      },
    );
  }
}